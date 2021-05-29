import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppBarAction extends StatelessWidget {
  final String icon;
  final String? label;
  final void Function() onPressed;

  const AppBarAction({
    required this.icon,
    this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        icon,
        height: 22,
        color: Color(0xFF58A6FF),
      ),
      tooltip: label,
      onPressed: onPressed,
    );
  }
}
