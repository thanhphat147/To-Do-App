import 'package:flutter/material.dart';

import '../config/themes/app_colors.dart';

class Buttons extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  Buttons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.colorPurple,
      child: Text(text),
    );
  }
}
