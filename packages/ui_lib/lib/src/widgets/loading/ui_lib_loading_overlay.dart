import 'package:flutter/material.dart';

import '../../../ui_lib.dart';
import 'ui_lib_loading_indicator.dart';

class UILibLoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Duration visibilityChangeDuration;
  final Color? indicatorColor;
  final Color? backgroundColor;

  const UILibLoadingOverlay({
    this.isLoading = true,
    this.visibilityChangeDuration = Duration.zero,
    this.indicatorColor,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isLoading,
      child: AnimatedOpacity(
        duration: visibilityChangeDuration,
        opacity: isLoading ? 1 : 0,
        child: Container(
          color: backgroundColor ?? UILibColors.white.withOpacity(0.7),
          alignment: Alignment.center,
          child: UILibLoadingIndicator(indicatorColor: indicatorColor),
        ),
      ),
    );
  }
}
