import 'package:flutter/material.dart';

class ElevatedButtonView extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? style;
  const ElevatedButtonView({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: const StadiumBorder(),
      ),
      child: Text(
        text,
        style: style ??
            Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: foregroundColor,
                ),
      ),
    );
  }
}
