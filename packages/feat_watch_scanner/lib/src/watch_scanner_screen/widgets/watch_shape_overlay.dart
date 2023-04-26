import 'package:flutter/material.dart';

import '../watch_scanner_assets.dart';

class WatchShapeOverlay extends StatelessWidget {
  final bool isOverlayRect;
  final bool isNormalizingWatchImage;
  final bool? isObjectNormalized;

  const WatchShapeOverlay({
    required this.isOverlayRect,
    required this.isNormalizingWatchImage,
    required this.isObjectNormalized,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color? overlayColor;
    if (isNormalizingWatchImage) {
      if (isObjectNormalized == true) {
        overlayColor = Colors.green;
      } else {
        overlayColor = Colors.red;
      }
    } else {
      overlayColor = Colors.white;
    }

    return Positioned.fill(
      child: Image.asset(
        isOverlayRect ? WatchScannerAssets.overlayWatchRound : WatchScannerAssets.overlayWatchRect,
        package: WatchScannerAssets.packageName,
        color: overlayColor,
      ),
    );
  }
}
