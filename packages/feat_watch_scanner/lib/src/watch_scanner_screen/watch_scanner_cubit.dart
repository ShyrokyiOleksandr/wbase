import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:kern_domain/kern_domain.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'watch_scanner_state.dart';

class WatchScannerCubit extends Cubit<WatchScannerState> {
  static const _modelPath = 'packages/feat_watch_scanner/assets/ml_models/model_6pcs_resnet_50.tflite';

  final AddWatchToHistoryUseCase _addWatchToHistoryUseCase;

  WatchScannerCubit({
    required AddWatchToHistoryUseCase addWatchToHistoryUseCase,
  })  : _addWatchToHistoryUseCase = addWatchToHistoryUseCase,
        super(WatchScannerState.initial()) {
    initializeCamera();
    initializeDetector();
  }

  @override
  Future<void> close() {
    state.cameraController?.dispose();
    state.detector?.close();
    return super.close();
  }

  Future<void> initializeCamera() async {
    try {
      emit(state.copyWith(isCameraLoading: true));
      final cameras = await availableCameras();
      final camera = cameras.firstWhere((camera) => camera.lensDirection == CameraLensDirection.back);
      final cameraController = CameraController(camera, ResolutionPreset.max, enableAudio: false);
      await cameraController.initialize();
      emit(state.copyWith(isCameraLoading: false, cameraController: cameraController, currentCamera: camera));
    } on Exception catch (exception) {
      emit(state.copyWith(isCameraLoading: false, cameraControllerException: exception));
    }
  }

  Future<void> takePhoto() async {
    if (state.cameraController == null) return;
    if (!state.cameraController!.value.isInitialized) return;
    if (state.cameraController!.value.isTakingPicture) return;

    if (state.cameraController!.value.isStreamingImages) {
      state.cameraController?.stopImageStream();
    }

    try {
      await state.cameraController!.setFlashMode(FlashMode.auto);
      XFile picture = await state.cameraController!.takePicture();
      emit(state.copyWith(
        photo: picture,
        detectedObject: null,
      ));
    } on Exception catch (exception) {
      emit(state.copyWith(cameraControllerException: exception));
    }
  }

  void resetPhoto() {
    emit(state.copyWith(photo: null));
  }

  Future<void> initializeDetector() async {
    emit(state.copyWith(isDetectorLoading: true));
    try {
      final path = await _getMLModelPath(_modelPath);
      final options = LocalObjectDetectorOptions(
        mode: DetectionMode.single,
        classifyObjects: true,
        multipleObjects: false,
        modelPath: path,
      );
      final detector = ObjectDetector(options: options);
      emit(state.copyWith(isDetectorLoading: false, detector: detector));
    } on Exception catch (exception) {
      emit(state.copyWith(isDetectorLoading: false, detectorLoadingException: exception));
    }
  }

  Future<void> scanPhoto() async {
    if (state.photo == null) return;
    emit(state.copyWith(isDetectingObjects: true));
    try {
      final inputImage = InputImage.fromFile(File(state.photo!.path));
      final objects = await state.detector!.processImage(inputImage);
      if (objects.isNotEmpty) {
        print(objects.first.labels.first.text);
        emit(state.copyWith(isDetectingObjects: false, detectedObject: objects.first));
      }
    } on Exception catch (exception) {
      emit(state.copyWith(isDetectingObjects: false, objectsDetectingException: exception));
    }
  }

  Future<void> startWatchImageNormalizing(Size cameraImageSize) async {
    if (state.cameraController == null) return;
    if (!state.cameraController!.value.isInitialized) return;
    if (state.cameraController!.value.isTakingPicture) return;
    if (state.cameraController!.value.isStreamingImages) return;

    state.cameraController?.startImageStream(
      (cameraImage) async {
        if (!state.isNormalizeDetectorBusy) {
          if (!isClosed) {
            emit(state.copyWith(
              isNormalizeDetectorBusy: true,
              cameraImage: cameraImage,
            ));
          }
          try {
            final objects = await state.detector!.processImage(_getInputImage());
            if (objects.isNotEmpty) {
              final isObjectCentered = _isObjectCentered(
                objectBoundingBox: objects.first.boundingBox,
                cameraImageSize: cameraImageSize,
              );
              final isObjectSizeNorm = _doesObjectMatchSize(
                objectBoundingBox: objects.first.boundingBox,
                cameraImageSize: cameraImageSize,
              );

              if (!isClosed) {
                emit(state.copyWith(
                  isNormalizeDetectorBusy: false,
                  isObjectNormalized: isObjectCentered && isObjectSizeNorm,
                ));
              }
            } else {
              emit(state.copyWith(isNormalizeDetectorBusy: false, isObjectNormalized: false));
            }
          } on Exception catch (exception) {
            emit(state.copyWith(objectsDetectingException: exception));
          }
        }
      },
    );
  }

  void stopWatchImageNormalizing() async {
    if (state.cameraController == null) return;
    if (!state.cameraController!.value.isInitialized) return;
    if (!state.cameraController!.value.isStreamingImages) return;

    await state.cameraController?.stopImageStream();
    await state.detector?.close();

    emit(state.copyWith(
      isNormalizeDetectorBusy: false,
      isObjectNormalized: false,
    ));
    emit(state);
  }

  Future<String> _getMLModelPath(String assetPath) async {
    if (Platform.isAndroid) {
      return 'flutter_assets/$assetPath';
    }
    final path = '${(await getApplicationSupportDirectory()).path}/$assetPath';
    await Directory(dirname(path)).create(recursive: true);
    final file = File(path);
    if (!await file.exists()) {
      final byteData = await rootBundle.load(assetPath);
      await file.writeAsBytes(byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      ));
    }
    return file.path;
  }

  InputImage _getInputImage() {
    final WriteBuffer allBytes = WriteBuffer();

    for (final Plane plane in state.cameraImage!.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final Size imageSize = Size(
      state.cameraImage!.width.toDouble(),
      state.cameraImage!.height.toDouble(),
    );

    final camera = state.currentCamera;
    final imageRotation = InputImageRotationValue.fromRawValue(camera!.sensorOrientation);
    // if (imageRotation == null) return;

    final inputImageFormat = InputImageFormatValue.fromRawValue(state.cameraImage!.format.raw);
    // if (inputImageFormat == null) return null;

    final planeData = state.cameraImage!.planes.map(
      (Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation!,
      inputImageFormat: inputImageFormat!,
      planeData: planeData,
    );

    return InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
  }

  bool _isObjectCentered({required Rect objectBoundingBox, required Size cameraImageSize}) {
    final double objectCenterX = objectBoundingBox.center.dx;
    final double objectCenterY = objectBoundingBox.center.dy;
    final double screenCenterX = cameraImageSize.width / 2;
    final double screenCenterY = cameraImageSize.height / 2;
    final double tolerance = 0.1; // 10% of screen width or height
    return (objectCenterX >= screenCenterX * (1 - tolerance)) &&
        (objectCenterX <= screenCenterX * (1 + tolerance)) &&
        (objectCenterY >= screenCenterY * (1 - tolerance)) &&
        (objectCenterY <= screenCenterY * (1 + tolerance));
  }

  bool _doesObjectMatchSize({
    required Rect objectBoundingBox,
    required Size cameraImageSize,
  }) {
    final double heightRatio = objectBoundingBox.height / cameraImageSize.height;
    final double widthRatio = objectBoundingBox.width / cameraImageSize.width;
    return widthRatio > 0.4 && widthRatio < 0.6 && heightRatio > 0.4 && heightRatio < 0.6;
  }

  Future<String?> addWatchToHistory(Watch watch) async {
    emit(state.copyWith(isAddingToHistory: true));
    try {
      final filePath = await _addWatchToHistoryUseCase.execute(
        watch: watch,
        photoLocalFilePath: state.photo!.path,
      );
      if (!isClosed) emit(state.copyWith(isAddingToHistory: false));
      return filePath;
    } on Exception catch (exception) {
      if (!isClosed) emit(state.copyWith(isAddingToHistory: false, addingToHistoryException: exception));
    }
    return null;
  }
}
