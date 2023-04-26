import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';

part "watch_scanner_state.freezed.dart";

@freezed
class WatchScannerState with _$WatchScannerState {
  const factory WatchScannerState({
    // camera
    required CameraController? cameraController,
    required CameraDescription? currentCamera,
    required bool isCameraLoading,
    required Exception? cameraControllerException,

    // detector
    required ObjectDetector? detector,
    required bool isDetectorLoading,
    required Exception? detectorLoadingException,

    // image normalized detection
    required bool isNormalizeDetectorBusy,
    required CameraImage? cameraImage,
    required bool isObjectNormalized,
    required Exception? normalizeDetectionException,

    // object detection
    required DetectedObject? detectedObject,
    required bool isDetectingObjects,
    required Exception? objectsDetectingException,

    // photo
    required XFile? photo,

    // add to history
    required bool isAddingToHistory,
    required Exception? addingToHistoryException,
  }) = _WatchScannerState;

  factory WatchScannerState.initial() {
    return const WatchScannerState(
      // camera
      cameraController: null,
      currentCamera: null,
      isCameraLoading: false,
      cameraControllerException: null,

      // detector
      detector: null,
      isDetectorLoading: false,
      detectorLoadingException: null,

      // image normalized detection
      isNormalizeDetectorBusy: false,
      cameraImage: null,
      isObjectNormalized: false,
      normalizeDetectionException: null,

      // object detection
      detectedObject: null,
      isDetectingObjects: false,
      objectsDetectingException: null,

      // photo
      photo: null,

      // add to history
      isAddingToHistory: false,
      addingToHistoryException: null,
    );
  }
}
