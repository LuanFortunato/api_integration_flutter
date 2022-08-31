import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  final String hintText;
  final IconData iconData;

  const TextFieldApp({
    Key? key,
    required this.hintText,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: Icon(
          iconData,
          size: 25,
        ),
      ),
    );
  }
}
