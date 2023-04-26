import 'package:flutter/material.dart';

import '../../../ui_lib.dart';

class UILibTryAgainError extends StatelessWidget {
  final String message;
  final VoidCallback onTryAgain;
  final EdgeInsets? padding;
  final String? buttonLabel;
  final Color? backgroundColor;
  final VoidCallback? onInHandPreessed;

  const UILibTryAgainError({
    required this.message,
    required this.onTryAgain,
    this.padding,
    this.buttonLabel,
    this.backgroundColor,
    this.onInHandPreessed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = UILibraryLocalizations.of(context);

    return Container(
      color: backgroundColor ?? UILibColors.white.withOpacity(0.7),
      padding: padding ?? const EdgeInsets.all(24.0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _MessageText(message: message),
            const SizedBox(height: 16),
            _ActionButton(
              label: buttonLabel ?? l10n.tryAgainAction,
              onPressed: onTryAgain,
            ),
            const SizedBox(height: 16),
            if (onInHandPreessed != null)
              Column(
                children: [
                  _ActionButton(
                    label: l10n.inHandAction,
                    onPressed: onInHandPreessed!,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _MessageText extends StatelessWidget {
  final String message;

  const _MessageText({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 18,
        color: UILibColors.dark,
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _ActionButton({
    required this.label,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Expanded(
          flex: 14,
          child: UILibButton.textSolidWhite(
            onPressed: onPressed,
            text: label,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
