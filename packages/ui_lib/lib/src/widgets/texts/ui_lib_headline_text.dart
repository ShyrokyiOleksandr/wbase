import 'package:flutter/material.dart';

class UILibHeadlineText extends StatelessWidget {
  final String text;
  final EdgeInsets padding;

  const UILibHeadlineText({
    required this.text,
    this.padding = const EdgeInsets.symmetric(horizontal: 26),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
