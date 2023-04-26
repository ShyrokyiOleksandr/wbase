import 'package:flutter/material.dart';

import '../../../ui_lib.dart';

class UILibLoadingIndicator extends StatelessWidget {
  final Color? indicatorColor;
  final double strokeWidth;

  const UILibLoadingIndicator({
    this.indicatorColor,
    this.strokeWidth = 4.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: strokeWidth,
      valueColor: AlwaysStoppedAnimation<Color>(indicatorColor ?? UILibColors.blue),
    );
  }
}
