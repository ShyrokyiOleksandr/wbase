// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchScannerState {
// camera
  CameraController? get cameraController => throw _privateConstructorUsedError;
  CameraDescription? get currentCamera => throw _privateConstructorUsedError;
  bool get isCameraLoading => throw _privateConstructorUsedError;
  Exception? get cameraControllerException =>
      throw _privateConstructorUsedError; // detector
  ObjectDetector? get detector => throw _privateConstructorUsedError;
  bool get isDetectorLoading => throw _privateConstructorUsedError;
  Exception? get detectorLoadingException =>
      throw _privateConstructorUsedError; // image normalized detection
  bool get isNormalizeDetectorBusy => throw _privateConstructorUsedError;
  CameraImage? get cameraImage => throw _privateConstructorUsedError;
  bool get isObjectNormalized => throw _privateConstructorUsedError;
  Exception? get normalizeDetectionException =>
      throw _privateConstructorUsedError; // object detection
  DetectedObject? get detectedObject => throw _privateConstructorUsedError;
  bool get isDetectingObjects => throw _privateConstructorUsedError;
  Exception? get objectsDetectingException =>
      throw _privateConstructorUsedError; // photo
  XFile? get photo => throw _privateConstructorUsedError; // add to history
  bool get isAddingToHistory => throw _privateConstructorUsedError;
  Exception? get addingToHistoryException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchScannerStateCopyWith<WatchScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchScannerStateCopyWith<$Res> {
  factory $WatchScannerStateCopyWith(
          WatchScannerState value, $Res Function(WatchScannerState) then) =
      _$WatchScannerStateCopyWithImpl<$Res, WatchScannerState>;
  @useResult
  $Res call(
      {CameraController? cameraController,
      CameraDescription? currentCamera,
      bool isCameraLoading,
      Exception? cameraControllerException,
      ObjectDetector? detector,
      bool isDetectorLoading,
      Exception? detectorLoadingException,
      bool isNormalizeDetectorBusy,
      CameraImage? cameraImage,
      bool isObjectNormalized,
      Exception? normalizeDetectionException,
      DetectedObject? detectedObject,
      bool isDetectingObjects,
      Exception? objectsDetectingException,
      XFile? photo,
      bool isAddingToHistory,
      Exception? addingToHistoryException});
}

/// @nodoc
class _$WatchScannerStateCopyWithImpl<$Res, $Val extends WatchScannerState>
    implements $WatchScannerStateCopyWith<$Res> {
  _$WatchScannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraController = freezed,
    Object? currentCamera = freezed,
    Object? isCameraLoading = null,
    Object? cameraControllerException = freezed,
    Object? detector = freezed,
    Object? isDetectorLoading = null,
    Object? detectorLoadingException = freezed,
    Object? isNormalizeDetectorBusy = null,
    Object? cameraImage = freezed,
    Object? isObjectNormalized = null,
    Object? normalizeDetectionException = freezed,
    Object? detectedObject = freezed,
    Object? isDetectingObjects = null,
    Object? objectsDetectingException = freezed,
    Object? photo = freezed,
    Object? isAddingToHistory = null,
    Object? addingToHistoryException = freezed,
  }) {
    return _then(_value.copyWith(
      cameraController: freezed == cameraController
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      currentCamera: freezed == currentCamera
          ? _value.currentCamera
          : currentCamera // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
      isCameraLoading: null == isCameraLoading
          ? _value.isCameraLoading
          : isCameraLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraControllerException: freezed == cameraControllerException
          ? _value.cameraControllerException
          : cameraControllerException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      detector: freezed == detector
          ? _value.detector
          : detector // ignore: cast_nullable_to_non_nullable
              as ObjectDetector?,
      isDetectorLoading: null == isDetectorLoading
          ? _value.isDetectorLoading
          : isDetectorLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      detectorLoadingException: freezed == detectorLoadingException
          ? _value.detectorLoadingException
          : detectorLoadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isNormalizeDetectorBusy: null == isNormalizeDetectorBusy
          ? _value.isNormalizeDetectorBusy
          : isNormalizeDetectorBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraImage: freezed == cameraImage
          ? _value.cameraImage
          : cameraImage // ignore: cast_nullable_to_non_nullable
              as CameraImage?,
      isObjectNormalized: null == isObjectNormalized
          ? _value.isObjectNormalized
          : isObjectNormalized // ignore: cast_nullable_to_non_nullable
              as bool,
      normalizeDetectionException: freezed == normalizeDetectionException
          ? _value.normalizeDetectionException
          : normalizeDetectionException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      detectedObject: freezed == detectedObject
          ? _value.detectedObject
          : detectedObject // ignore: cast_nullable_to_non_nullable
              as DetectedObject?,
      isDetectingObjects: null == isDetectingObjects
          ? _value.isDetectingObjects
          : isDetectingObjects // ignore: cast_nullable_to_non_nullable
              as bool,
      objectsDetectingException: freezed == objectsDetectingException
          ? _value.objectsDetectingException
          : objectsDetectingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isAddingToHistory: null == isAddingToHistory
          ? _value.isAddingToHistory
          : isAddingToHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      addingToHistoryException: freezed == addingToHistoryException
          ? _value.addingToHistoryException
          : addingToHistoryException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WatchScannerStateCopyWith<$Res>
    implements $WatchScannerStateCopyWith<$Res> {
  factory _$$_WatchScannerStateCopyWith(_$_WatchScannerState value,
          $Res Function(_$_WatchScannerState) then) =
      __$$_WatchScannerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CameraController? cameraController,
      CameraDescription? currentCamera,
      bool isCameraLoading,
      Exception? cameraControllerException,
      ObjectDetector? detector,
      bool isDetectorLoading,
      Exception? detectorLoadingException,
      bool isNormalizeDetectorBusy,
      CameraImage? cameraImage,
      bool isObjectNormalized,
      Exception? normalizeDetectionException,
      DetectedObject? detectedObject,
      bool isDetectingObjects,
      Exception? objectsDetectingException,
      XFile? photo,
      bool isAddingToHistory,
      Exception? addingToHistoryException});
}

/// @nodoc
class __$$_WatchScannerStateCopyWithImpl<$Res>
    extends _$WatchScannerStateCopyWithImpl<$Res, _$_WatchScannerState>
    implements _$$_WatchScannerStateCopyWith<$Res> {
  __$$_WatchScannerStateCopyWithImpl(
      _$_WatchScannerState _value, $Res Function(_$_WatchScannerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraController = freezed,
    Object? currentCamera = freezed,
    Object? isCameraLoading = null,
    Object? cameraControllerException = freezed,
    Object? detector = freezed,
    Object? isDetectorLoading = null,
    Object? detectorLoadingException = freezed,
    Object? isNormalizeDetectorBusy = null,
    Object? cameraImage = freezed,
    Object? isObjectNormalized = null,
    Object? normalizeDetectionException = freezed,
    Object? detectedObject = freezed,
    Object? isDetectingObjects = null,
    Object? objectsDetectingException = freezed,
    Object? photo = freezed,
    Object? isAddingToHistory = null,
    Object? addingToHistoryException = freezed,
  }) {
    return _then(_$_WatchScannerState(
      cameraController: freezed == cameraController
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      currentCamera: freezed == currentCamera
          ? _value.currentCamera
          : currentCamera // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
      isCameraLoading: null == isCameraLoading
          ? _value.isCameraLoading
          : isCameraLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraControllerException: freezed == cameraControllerException
          ? _value.cameraControllerException
          : cameraControllerException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      detector: freezed == detector
          ? _value.detector
          : detector // ignore: cast_nullable_to_non_nullable
              as ObjectDetector?,
      isDetectorLoading: null == isDetectorLoading
          ? _value.isDetectorLoading
          : isDetectorLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      detectorLoadingException: freezed == detectorLoadingException
          ? _value.detectorLoadingException
          : detectorLoadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isNormalizeDetectorBusy: null == isNormalizeDetectorBusy
          ? _value.isNormalizeDetectorBusy
          : isNormalizeDetectorBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraImage: freezed == cameraImage
          ? _value.cameraImage
          : cameraImage // ignore: cast_nullable_to_non_nullable
              as CameraImage?,
      isObjectNormalized: null == isObjectNormalized
          ? _value.isObjectNormalized
          : isObjectNormalized // ignore: cast_nullable_to_non_nullable
              as bool,
      normalizeDetectionException: freezed == normalizeDetectionException
          ? _value.normalizeDetectionException
          : normalizeDetectionException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      detectedObject: freezed == detectedObject
          ? _value.detectedObject
          : detectedObject // ignore: cast_nullable_to_non_nullable
              as DetectedObject?,
      isDetectingObjects: null == isDetectingObjects
          ? _value.isDetectingObjects
          : isDetectingObjects // ignore: cast_nullable_to_non_nullable
              as bool,
      objectsDetectingException: freezed == objectsDetectingException
          ? _value.objectsDetectingException
          : objectsDetectingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isAddingToHistory: null == isAddingToHistory
          ? _value.isAddingToHistory
          : isAddingToHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      addingToHistoryException: freezed == addingToHistoryException
          ? _value.addingToHistoryException
          : addingToHistoryException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_WatchScannerState implements _WatchScannerState {
  const _$_WatchScannerState(
      {required this.cameraController,
      required this.currentCamera,
      required this.isCameraLoading,
      required this.cameraControllerException,
      required this.detector,
      required this.isDetectorLoading,
      required this.detectorLoadingException,
      required this.isNormalizeDetectorBusy,
      required this.cameraImage,
      required this.isObjectNormalized,
      required this.normalizeDetectionException,
      required this.detectedObject,
      required this.isDetectingObjects,
      required this.objectsDetectingException,
      required this.photo,
      required this.isAddingToHistory,
      required this.addingToHistoryException});

// camera
  @override
  final CameraController? cameraController;
  @override
  final CameraDescription? currentCamera;
  @override
  final bool isCameraLoading;
  @override
  final Exception? cameraControllerException;
// detector
  @override
  final ObjectDetector? detector;
  @override
  final bool isDetectorLoading;
  @override
  final Exception? detectorLoadingException;
// image normalized detection
  @override
  final bool isNormalizeDetectorBusy;
  @override
  final CameraImage? cameraImage;
  @override
  final bool isObjectNormalized;
  @override
  final Exception? normalizeDetectionException;
// object detection
  @override
  final DetectedObject? detectedObject;
  @override
  final bool isDetectingObjects;
  @override
  final Exception? objectsDetectingException;
// photo
  @override
  final XFile? photo;
// add to history
  @override
  final bool isAddingToHistory;
  @override
  final Exception? addingToHistoryException;

  @override
  String toString() {
    return 'WatchScannerState(cameraController: $cameraController, currentCamera: $currentCamera, isCameraLoading: $isCameraLoading, cameraControllerException: $cameraControllerException, detector: $detector, isDetectorLoading: $isDetectorLoading, detectorLoadingException: $detectorLoadingException, isNormalizeDetectorBusy: $isNormalizeDetectorBusy, cameraImage: $cameraImage, isObjectNormalized: $isObjectNormalized, normalizeDetectionException: $normalizeDetectionException, detectedObject: $detectedObject, isDetectingObjects: $isDetectingObjects, objectsDetectingException: $objectsDetectingException, photo: $photo, isAddingToHistory: $isAddingToHistory, addingToHistoryException: $addingToHistoryException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchScannerState &&
            (identical(other.cameraController, cameraController) ||
                other.cameraController == cameraController) &&
            (identical(other.currentCamera, currentCamera) ||
                other.currentCamera == currentCamera) &&
            (identical(other.isCameraLoading, isCameraLoading) ||
                other.isCameraLoading == isCameraLoading) &&
            (identical(other.cameraControllerException, cameraControllerException) ||
                other.cameraControllerException == cameraControllerException) &&
            (identical(other.detector, detector) ||
                other.detector == detector) &&
            (identical(other.isDetectorLoading, isDetectorLoading) ||
                other.isDetectorLoading == isDetectorLoading) &&
            (identical(other.detectorLoadingException, detectorLoadingException) ||
                other.detectorLoadingException == detectorLoadingException) &&
            (identical(other.isNormalizeDetectorBusy, isNormalizeDetectorBusy) ||
                other.isNormalizeDetectorBusy == isNormalizeDetectorBusy) &&
            (identical(other.cameraImage, cameraImage) ||
                other.cameraImage == cameraImage) &&
            (identical(other.isObjectNormalized, isObjectNormalized) ||
                other.isObjectNormalized == isObjectNormalized) &&
            (identical(other.normalizeDetectionException,
                    normalizeDetectionException) ||
                other.normalizeDetectionException ==
                    normalizeDetectionException) &&
            (identical(other.detectedObject, detectedObject) ||
                other.detectedObject == detectedObject) &&
            (identical(other.isDetectingObjects, isDetectingObjects) ||
                other.isDetectingObjects == isDetectingObjects) &&
            (identical(other.objectsDetectingException,
                    objectsDetectingException) ||
                other.objectsDetectingException == objectsDetectingException) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.isAddingToHistory, isAddingToHistory) ||
                other.isAddingToHistory == isAddingToHistory) &&
            (identical(
                    other.addingToHistoryException, addingToHistoryException) ||
                other.addingToHistoryException == addingToHistoryException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cameraController,
      currentCamera,
      isCameraLoading,
      cameraControllerException,
      detector,
      isDetectorLoading,
      detectorLoadingException,
      isNormalizeDetectorBusy,
      cameraImage,
      isObjectNormalized,
      normalizeDetectionException,
      detectedObject,
      isDetectingObjects,
      objectsDetectingException,
      photo,
      isAddingToHistory,
      addingToHistoryException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchScannerStateCopyWith<_$_WatchScannerState> get copyWith =>
      __$$_WatchScannerStateCopyWithImpl<_$_WatchScannerState>(
          this, _$identity);
}

abstract class _WatchScannerState implements WatchScannerState {
  const factory _WatchScannerState(
          {required final CameraController? cameraController,
          required final CameraDescription? currentCamera,
          required final bool isCameraLoading,
          required final Exception? cameraControllerException,
          required final ObjectDetector? detector,
          required final bool isDetectorLoading,
          required final Exception? detectorLoadingException,
          required final bool isNormalizeDetectorBusy,
          required final CameraImage? cameraImage,
          required final bool isObjectNormalized,
          required final Exception? normalizeDetectionException,
          required final DetectedObject? detectedObject,
          required final bool isDetectingObjects,
          required final Exception? objectsDetectingException,
          required final XFile? photo,
          required final bool isAddingToHistory,
          required final Exception? addingToHistoryException}) =
      _$_WatchScannerState;

  @override // camera
  CameraController? get cameraController;
  @override
  CameraDescription? get currentCamera;
  @override
  bool get isCameraLoading;
  @override
  Exception? get cameraControllerException;
  @override // detector
  ObjectDetector? get detector;
  @override
  bool get isDetectorLoading;
  @override
  Exception? get detectorLoadingException;
  @override // image normalized detection
  bool get isNormalizeDetectorBusy;
  @override
  CameraImage? get cameraImage;
  @override
  bool get isObjectNormalized;
  @override
  Exception? get normalizeDetectionException;
  @override // object detection
  DetectedObject? get detectedObject;
  @override
  bool get isDetectingObjects;
  @override
  Exception? get objectsDetectingException;
  @override // photo
  XFile? get photo;
  @override // add to history
  bool get isAddingToHistory;
  @override
  Exception? get addingToHistoryException;
  @override
  @JsonKey(ignore: true)
  _$$_WatchScannerStateCopyWith<_$_WatchScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}
