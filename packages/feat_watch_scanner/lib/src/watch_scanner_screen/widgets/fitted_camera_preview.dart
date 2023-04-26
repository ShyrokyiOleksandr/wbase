import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class FittedCameraPreview extends StatelessWidget {
  final double previewWidth;
  final double previewHeight;
  final CameraController controller;

  const FittedCameraPreview({
    required this.previewWidth,
    required this.previewHeight,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Positioned.fill(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: orientation == Orientation.portrait ? previewHeight : previewWidth,
          height: orientation == Orientation.portrait ? previewWidth : previewHeight,
          child: CameraPreview(controller),
        ),
      ),
    );
  }
}
