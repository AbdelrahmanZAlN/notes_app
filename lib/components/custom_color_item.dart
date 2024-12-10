import 'package:flutter/material.dart';

class CustomColorItem extends StatelessWidget {
  final Color color;
  final bool isActive;
  const CustomColorItem({
    super.key,
    required this.color,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive==true?
    CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ):
    CircleAvatar(
      radius: 38,
      backgroundColor: color,
    )
    ;
  }
}
