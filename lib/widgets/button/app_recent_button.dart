import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_flutter/utility/app_assets.dart';
import 'package:github_flutter/utility/app_colors.dart';

class RecentsButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  RecentsButton({
    required this.label,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white12,
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: SvgPicture.asset(
                AppAssets.pull_request_icon,
                color: AppColors.green,
                height: 20,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ko-hut / octicons_icon #1',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'null-safety migration',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.pravatar.cc/50',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'ko-hut / octicons_icon #1',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  '7h',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
