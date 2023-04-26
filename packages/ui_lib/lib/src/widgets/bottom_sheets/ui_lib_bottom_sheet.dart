import 'package:flutter/material.dart';

import '../../../ui_lib.dart';
import 'ui_lib_bottom_sheet_drag_anchor.dart';

class UILibBottomSheet extends StatelessWidget {
  static Future<T?> showModal<T>({
    required final BuildContext context,
    required final Widget child,
    final bool isScrollControlled = true,
    final bool enableDrag = true,
    final bool isDismissible = true,
    final decoration = const UILIbBottomSheetDefaultBackgroundDecoration(),
    final paddingRatio = 0.08,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: Colors.transparent,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * paddingRatio),
          child: UILibBottomSheet(
            isDismissible: isDismissible,
            decoration: decoration,
            child: child,
          ),
        );
      },
    );
  }

  final Widget child;
  final bool isDismissible;
  final BoxDecoration decoration;

  const UILibBottomSheet({
    required this.child,
    required this.isDismissible,
    this.decoration = const UILIbBottomSheetDefaultBackgroundDecoration(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: isDismissible ? Navigator.of(context).pop : null,
            child: Container(),
          ),
        ),
        DecoratedBox(
          decoration: decoration.copyWith(borderRadius: UILIbBottomSheetDefaultBackgroundDecoration._borderRadius),
          child: Material(
            color: Colors.transparent,
            borderRadius: UILIbBottomSheetDefaultBackgroundDecoration._borderRadius,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const UILibBottomSheetDragAnchor(),
                Flexible(child: child),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class UILIbBottomSheetDefaultBackgroundDecoration extends BoxDecoration {
  static const double cornersRadius = 24;
  static const _borderRadius = BorderRadius.only(
    topLeft: Radius.circular(cornersRadius),
    topRight: Radius.circular(cornersRadius),
  );

  const UILIbBottomSheetDefaultBackgroundDecoration()
      : super(
          color: UILibColors.white,
          borderRadius: _borderRadius,
        );
}
