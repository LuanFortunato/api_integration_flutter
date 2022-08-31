import 'package:flutter/material.dart';

class LargeElevatedButtonApp extends StatelessWidget {
  final String text;

  const LargeElevatedButtonApp({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.28),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
