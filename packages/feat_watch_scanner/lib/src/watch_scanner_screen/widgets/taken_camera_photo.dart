import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TakenCameraPhoto extends StatelessWidget {
  final XFile photo;

  const TakenCameraPhoto({
    required this.photo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.file(File(photo.path), fit: BoxFit.cover),
    );
  }
}
