import 'package:flutter/material.dart';

class UILibBackButton extends StatelessWidget {
  final VoidCallback onTapBack;

  const UILibBackButton({
    required this.onTapBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkResponse(
        onTap: onTapBack,
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
