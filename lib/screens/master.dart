import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_flutter/screens/home.dart';
import 'package:github_flutter/utility/app_assets.dart';
import 'package:github_flutter/utility/app_strings.dart';
import 'package:github_flutter/widgets/button/appbar_action.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int selectedIndex = 0;
  ScreenType screen = ScreenType.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          returnAppBarTitle(),
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: returnAppBarActions(),
      ),
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            if (index == 0) screen = ScreenType.home;
            if (index == 1) screen = ScreenType.notifications;
            if (index == 2) screen = ScreenType.explore;
            if (index == 3) screen = ScreenType.profile;
          });
        },
        items: [
          bottomNavButton(
            icon: AppAssets.home_icon,
            selectedIcon: AppAssets.home_selected_icon,
            label: AppStrings.home,
          ),
          bottomNavButton(
            icon: AppAssets.notification_icon,
            selectedIcon: AppAssets.notification_selected_icon,
            label: AppStrings.notifications,
          ),
          bottomNavButton(
            icon: AppAssets.explore_icon,
            label: AppStrings.explore,
          ),
          bottomNavButton(
            icon: AppAssets.profile_icon,
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavButton({
    required String icon,
    required String label,
    bool selected = false,
    String? selectedIcon,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.transparent,
      icon: SvgPicture.asset(
        icon,
        color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      ),
      label: label,
      activeIcon: SvgPicture.asset(
        selectedIcon != null ? selectedIcon : icon,
        color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      ),
      tooltip: label,
    );
  }

  returnAppBarTitle() {
    if (screen == ScreenType.notifications) return AppStrings.inbox;
    if (screen == ScreenType.explore) return AppStrings.explore;
    if (screen == ScreenType.profile) return AppStrings.profile;
    return AppStrings.home;
  }

  returnAppBarActions() {
    if (screen == ScreenType.notifications) return null;
    if (screen == ScreenType.explore) return null;
    if (screen == ScreenType.profile) return null;
    return [
      AppBarAction(
        icon: AppAssets.search_icon,
        onPressed: () {},
      ),
      AppBarAction(
        icon: AppAssets.plus_circle_icon,
        onPressed: () {},
      ),
    ];
  }
}

enum ScreenType {
  home,
  notifications,
  explore,
  profile,
}
