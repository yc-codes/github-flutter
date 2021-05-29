import 'package:flutter/material.dart';
import 'package:github_flutter/utility/app_colors.dart';

class Button extends StatelessWidget {
  final void Function() onPressed;
  final String label;

  Button({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Color(0xFF201F24),
      padding: EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        'ADD FAVORITES',
        style: TextStyle(
          color: AppColors.blue,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
