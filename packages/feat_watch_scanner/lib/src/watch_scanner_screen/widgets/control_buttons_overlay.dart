import 'package:flutter/material.dart';
import 'package:ui_lib/ui_lib.dart';

import '../../../feat_watch_scanner.dart';
import '../watch_scanner_assets.dart';

class ControlButtonsOverlay extends StatelessWidget {
  static const _animationDuration = Duration(milliseconds: 200);

  final bool isOverlayRect;
  final bool isNormalizingWatchImage;
  final bool canTakePhoto;
  final bool canScanPhoto;
  final VoidCallback onWatchOverlayChange;
  final VoidCallback onNormalizeWatchImage;
  final VoidCallback onTakePhoto;
  final VoidCallback onResetPhoto;
  final VoidCallback onScanPhoto;

  const ControlButtonsOverlay({
    required this.isOverlayRect,
    required this.isNormalizingWatchImage,
    required this.canTakePhoto,
    required this.canScanPhoto,
    required this.onWatchOverlayChange,
    required this.onNormalizeWatchImage,
    required this.onTakePhoto,
    required this.onResetPhoto,
    required this.onScanPhoto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = WatchScannerLocalizations.of(context);

    return Positioned.fill(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (!canScanPhoto)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: AnimatedScale(
                        duration: _animationDuration,
                        scale: isNormalizingWatchImage ? 1 : 0,
                        child: UILibButton.textTransparent(
                          text: l10n.scannerScreenNormalizeMessage,
                          onPressed: () {},
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    UILibButton.iconTransparent(
                      icon: Image.asset(
                        isOverlayRect ? WatchScannerAssets.icWatchRect : WatchScannerAssets.icWatchRound,
                        package: WatchScannerAssets.packageName,
                      ),
                      onPressed: onWatchOverlayChange,
                    ),
                  ],
                ),
              const Spacer(flex: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedScale(
                    duration: _animationDuration,
                    scale: canTakePhoto ? 1 : 0,
                    child: UILibButton.iconTransparent(
                      onPressed: !canScanPhoto ? onTakePhoto : onResetPhoto,
                      icon: Icon(
                        !canScanPhoto ? Icons.camera : Icons.settings_backup_restore,
                        color: UILibColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  AnimatedScale(
                    duration: _animationDuration,
                    scale: !canScanPhoto ? 1 : 0,
                    child: UILibButton.iconTransparent(
                      onPressed: onNormalizeWatchImage,
                      icon: Icon(
                        !isNormalizingWatchImage ? Icons.gps_fixed_rounded : Icons.gps_off,
                        color: UILibColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  AnimatedScale(
                    duration: _animationDuration,
                    scale: canScanPhoto ? 1 : 0,
                    child: UILibButton.iconTransparent(
                      onPressed: onScanPhoto,
                      icon: Image.asset(
                        WatchScannerAssets.icWatchScanner,
                        package: WatchScannerAssets.packageName,
                        color: UILibColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
