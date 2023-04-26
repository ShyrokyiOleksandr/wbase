import 'package:flutter/material.dart';

class UILibBottomSheetTitleText extends StatelessWidget {
  final String text;

  const UILibBottomSheetTitleText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          height: 1.12,
        ),
      ),
    );
  }
}
