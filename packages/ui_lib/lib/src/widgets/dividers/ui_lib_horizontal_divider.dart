import 'package:flutter/material.dart';

import '../../../ui_lib.dart';

class UILibHorizontalDivider extends StatelessWidget {
  final EdgeInsets margin;
  const UILibHorizontalDivider({
    this.margin = const EdgeInsets.all(0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 1,
      color: UILibColors.greyLight,
    );
  }
}
