import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeIconTextButton extends StatelessWidget {
  final String icon;
  final String label;
  final Color iconBackground;
  final void Function() onPressed;

  const HomeIconTextButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    required this.iconBackground,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 34,
              width: 34,
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(0, 0, 14, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: iconBackground,
              ),
              // padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                icon,
                height: 16,
                color: Colors.white,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
