import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
        ),),
        CustomIcon(icon: icon,onTap: onTap,)
      ],
    );
  }
}
