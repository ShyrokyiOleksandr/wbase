import 'package:flutter/material.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:ui_lib/ui_lib.dart';

class ObjectDetectorPainter extends CustomPainter {
  ObjectDetectorPainter(this.absoluteImageSize, this.objects);

  final Size absoluteImageSize;
  final List<DetectedObject> objects;

  @override
  void paint(Canvas canvas, Size size) {
    final double scaleX = size.width / absoluteImageSize.width;
    final double scaleY = size.height / absoluteImageSize.height;

    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..color = objects.isNotEmpty ? UILibColors.blue : Colors.red;

    // outline detected object
    for (DetectedObject detectedObject in objects) {
      canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromLTRB(
            detectedObject.boundingBox.left * scaleX,
            detectedObject.boundingBox.top * scaleY,
            detectedObject.boundingBox.right * scaleX,
            detectedObject.boundingBox.bottom * scaleY,
          ),
          topLeft: const Radius.circular(8),
          topRight: const Radius.circular(8),
          bottomLeft: const Radius.circular(8),
          bottomRight: const Radius.circular(8),
        ),
        paint,
      );

      // mark: for debugging
      // add object labels to outlined rectangles
      // var list = detectedObject.labels;
      // for (Label label in list) {
      //   TextSpan span = TextSpan(
      //     text: label.text,
      //     //text: "${label.text} ${(label.confidence * 100).round()}%",
      //     style: const TextStyle(fontSize: 25, color: Colors.blue),
      //   );
      //   TextPainter tp = TextPainter(text: span, textAlign: TextAlign.left, textDirection: TextDirection.ltr);
      //   tp.layout();
      //   tp.paint(canvas, Offset(detectedObject.boundingBox.left * scaleX, detectedObject.boundingBox.top * scaleY));
      //   break;
      // }
    }
  }

  @override
  bool shouldRepaint(ObjectDetectorPainter oldDelegate) {
    return oldDelegate.absoluteImageSize != absoluteImageSize || oldDelegate.objects != objects;
  }
}
