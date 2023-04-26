import 'package:flutter/material.dart';
import 'package:ui_lib/src/ui_lib_colors.dart';

class UILibButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Widget child;
  final Color? foregroundColor;
  final BorderSide? side;

  const UILibButton._({
    required this.onPressed,
    required this.backgroundColor,
    required this.child,
    this.foregroundColor,
    this.side,
    Key? key,
  }) : super(key: key);

  factory UILibButton.textTransparent({
    required String text,
    required VoidCallback? onPressed,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return UILibButton._(
      onPressed: onPressed,
      backgroundColor: UILibColors.black.withOpacity(0.5),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

  factory UILibButton.iconTransparent({
    required Widget icon,
    required VoidCallback? onPressed,
    Key? key,
  }) {
    return UILibButton._(
      onPressed: onPressed,
      backgroundColor: UILibColors.black.withOpacity(0.5),
      child: icon,
      key: key,
    );
  }

  factory UILibButton.textSolidGrey({
    required String text,
    required VoidCallback? onPressed,
  }) {
    return UILibButton._(
      onPressed: onPressed,
      backgroundColor: UILibColors.grey,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  factory UILibButton.textSolidWhite({
    required String text,
    required VoidCallback? onPressed,
    double? minWidth,
  }) {
    return UILibButton._(
      onPressed: onPressed,
      backgroundColor: UILibColors.white,
      foregroundColor: UILibColors.dark,
      side: const BorderSide(color: UILibColors.grey, width: 2),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          minimumSize: Size(60, 60),
          maximumSize: const Size(60, 60),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            side: side ?? BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          )),
      child: child,
    );
  }
}
