import 'package:flutter/material.dart';

class TextButtonView extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? foregroundColor;
  const TextButtonView({
    super.key,
    required this.text,
    required this.onPressed,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: foregroundColor,
            ),
      ),
    );
  }
}
