import 'package:flutter/material.dart';

class IconButtonLoginWith extends StatelessWidget {
  final Icon icon;
  final double iconSize;

  const IconButtonLoginWith({
    Key? key,
    required this.icon,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize,
      onPressed: () {},
      icon: CircleAvatar(
        backgroundColor: Colors.white,
        child: icon,
      ),
    );
  }
}
