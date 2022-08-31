import 'package:flutter/material.dart';

class UnderlinedTextButton extends StatelessWidget {
  final String text;
  final dynamic onPressed;

  const UnderlinedTextButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
