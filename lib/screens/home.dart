import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_flutter/utility/app_assets.dart';
import 'package:github_flutter/utility/app_colors.dart';
import 'package:github_flutter/utility/app_strings.dart';
import 'package:github_flutter/widgets/button/app_recent_button.dart';
import 'package:github_flutter/widgets/button/button.dart';
import 'package:github_flutter/widgets/button/home_icon_text_button.dart';
import 'package:github_flutter/widgets/text/title_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(),
      color: Color(0xFF17181C),
      child: ListView(
        children: [
          TitleText(AppStrings.my_work),
          HomeIconTextButton(
            onPressed: () {},
            icon: AppAssets.home_icon,
            label: AppStrings.issues,
            iconBackground: AppColors.green,
          ),
          HomeIconTextButton(
            onPressed: () {},
            icon: AppAssets.pull_request_icon,
            label: AppStrings.pull_requests,
            iconBackground: AppColors.blue,
          ),
          HomeIconTextButton(
            onPressed: () {},
            icon: AppAssets.discussion_icon,
            label: AppStrings.discussion,
            iconBackground: AppColors.purple,
          ),
          HomeIconTextButton(
            onPressed: () {},
            icon: AppAssets.repo_icon,
            label: AppStrings.repositories,
            iconBackground: AppColors.gray,
          ),
          HomeIconTextButton(
            onPressed: () {},
            icon: AppAssets.org_icon,
            label: AppStrings.organizations,
            iconBackground: AppColors.orange,
          ),
          Divider(),
          TitleText(AppStrings.favorites),
          Container(
            padding: const EdgeInsets.all(18),
            child: Text(
              AppStrings.favorite_empty_text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Button(
              label: 'lab',
              onPressed: () {},
            ),
          ),
          Divider(),
          TitleText(AppStrings.recent),
          RecentsButton(
            label: 'asdas',
            onPressed: () {},
          ),
          RecentsButton(
            label: 'asdas',
            onPressed: () {},
          ),
          RecentsButton(
            label: 'asdas',
            onPressed: () {},
          ),
          RecentsButton(
            label: 'asdas',
            onPressed: () {},
          ),
          RecentsButton(
            label: 'asdas',
            onPressed: () {},
          ),
          RecentsButton(
            label: 'asdas',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
