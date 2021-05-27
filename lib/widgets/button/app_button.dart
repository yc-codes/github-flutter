import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton(
    this.text, {
    required this.onClick,
    this.varient = AppButtonVarient.primary,
  });
  final Function onClick;
  final String text;
  final AppButtonVarient varient;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 18),
      onPressed: () {},
      minWidth: double.infinity,
      highlightColor: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
          color: appButtonTextColor(varient),
        ),
      ),
      color: appButtonColor(varient),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

Color appButtonColor(AppButtonVarient varient) {
  if (varient == AppButtonVarient.primary) return Colors.white;
  if (varient == AppButtonVarient.secondary) return Colors.white12;
  if (varient == AppButtonVarient.success) return Colors.green;
  return Colors.red;
}

Color appButtonTextColor(AppButtonVarient varient) {
  if (varient == AppButtonVarient.primary) return Colors.black;
  if (varient == AppButtonVarient.secondary) return Colors.white;
  if (varient == AppButtonVarient.success) return Colors.white;
  return Colors.white;
}

enum AppButtonVarient {
  primary,
  secondary,
  success,
  warning,
}
