import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';
import 'package:ui_lib/ui_lib.dart';

import '../watch_scanner_bottom_sheet/watch_scanner_bottom_sheet.dart';
import 'watch_scanner_cubit.dart';
import 'watch_scanner_state.dart';
import 'widgets/control_buttons_overlay.dart';
import 'widgets/fitted_camera_preview.dart';
import 'widgets/taken_camera_photo.dart';
import 'widgets/watch_shape_overlay.dart';

class WatchScannerScreen extends StatefulWidget {
  final void Function(
    String watchId,
    String watchPhotoUrl,
  ) onOpenWatchDetailsScreen;

  const WatchScannerScreen({
    required this.onOpenWatchDetailsScreen,
    Key? key,
  }) : super(key: key);

  @override
  State<WatchScannerScreen> createState() => _WatchScannerScreenState();
}

class _WatchScannerScreenState extends State<WatchScannerScreen> {
  late final _screenBloc = GetIt.I<WatchScannerCubit>();

  bool _isOverlayRect = true;

  /// Prevents [WatchScannerBottomSheet] from extra-opening
  bool _isBottomSheetOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<WatchScannerCubit, WatchScannerState>(
        bloc: _screenBloc,
        listener: (context, state) async {
          if (state.detectedObject != null && state.photo != null) {
            await _showDetectedWatchBottomSheet(
              context,
              state.detectedObject!.labels.first.text,
            );
          }
        },
        builder: (context, state) {
          if (state.isCameraLoading || state.isDetectorLoading || state.isAddingToHistory) {
            return UILibLoadingOverlay();
          } else if (state.cameraControllerException != null) {
            return UILibTryAgainError(
              message: state.cameraControllerException.toString(),
              onTryAgain: _screenBloc.initializeCamera,
            );
          } else if (state.detectorLoadingException != null) {
            return UILibTryAgainError(
              message: state.detectorLoadingException.toString(),
              onTryAgain: _screenBloc.initializeDetector,
            );
          } else if (state.objectsDetectingException != null) {
            return UILibTryAgainError(
              message: state.objectsDetectingException.toString(),
              onTryAgain: _screenBloc.scanPhoto,
            );
          } else if (state.normalizeDetectionException != null) {
            return UILibTryAgainError(
              message: state.normalizeDetectionException.toString(),
              onTryAgain: () => _screenBloc.startWatchImageNormalizing(
                Size(
                  state.cameraController!.value.previewSize!.height,
                  state.cameraController!.value.previewSize!.width,
                ),
              ),
            );
          } else if (state.addingToHistoryException != null) {
            return UILibTryAgainError(
              message: state.addingToHistoryException.toString(),
              // todo: think what to do
              onTryAgain: () {},
            );
          }
          return Stack(
            children: [
              if (state.cameraController != null && state.photo == null) ...{
                FittedCameraPreview(
                  previewWidth: state.cameraController!.value.previewSize!.width,
                  previewHeight: state.cameraController!.value.previewSize!.height,
                  controller: state.cameraController!,
                ),
                WatchShapeOverlay(
                  isNormalizingWatchImage: state.cameraController!.value.isStreamingImages,
                  isOverlayRect: _isOverlayRect,
                  isObjectNormalized: state.isObjectNormalized,
                ),
              },
              if (state.photo != null) TakenCameraPhoto(photo: state.photo!),
              ControlButtonsOverlay(
                isOverlayRect: _isOverlayRect,
                isNormalizingWatchImage: state.cameraController!.value.isStreamingImages,
                canTakePhoto:
                    state.isObjectNormalized && state.cameraController!.value.isStreamingImages || state.photo != null,
                canScanPhoto: state.photo != null,
                onWatchOverlayChange: _changeWatchOverlayShape,
                onNormalizeWatchImage: !state.cameraController!.value.isStreamingImages
                    ? () => _startWatchImageNormalizing(
                          Size(
                            state.cameraController!.value.previewSize!.height,
                            state.cameraController!.value.previewSize!.width,
                          ),
                        )
                    : _stopWatchImageNormalizing,
                onTakePhoto: _takePhoto,
                onResetPhoto: _resetPhoto,
                onScanPhoto: _scanPhoto,
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _screenBloc.close();
    super.dispose();
  }

  void _changeWatchOverlayShape() {
    setState(() {
      _isOverlayRect = !_isOverlayRect;
    });
  }

  void _takePhoto() {
    _screenBloc.takePhoto();
  }

  void _resetPhoto() {
    _screenBloc.resetPhoto();
  }

  void _scanPhoto() {
    _screenBloc.scanPhoto();
  }

  void _startWatchImageNormalizing(Size cameraImageSize) {
    _screenBloc.startWatchImageNormalizing(cameraImageSize);
  }

  void _stopWatchImageNormalizing() {
    _screenBloc.stopWatchImageNormalizing();
  }

  Future<void> _showDetectedWatchBottomSheet(
    BuildContext context,
    String watchId,
  ) async {
    if (!_isBottomSheetOpen) {
      _isBottomSheetOpen = true;
      final result = await WatchScannerBottomSheet.showModal(
        context: context,
        watchId: watchId,
      );
      if (result is Watch) {
        final photoUrl = await _screenBloc.addWatchToHistory(result);
        if (photoUrl != null) {
          widget.onOpenWatchDetailsScreen(watchId, photoUrl);
        }
      }
      _isBottomSheetOpen = false;
    }
  }
}
