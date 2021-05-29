import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_flutter/utility/app_assets.dart';
import 'package:github_flutter/utility/app_strings.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          bottomNavButton(
            icon: AppAssets.homeIcon,
            selectedIcon: AppAssets.homeSelectedIcon,
            label: AppStrings.home,
          ),
          bottomNavButton(
            icon: AppAssets.notificationIcon,
            selectedIcon: AppAssets.notificationSelectedIcon,
            label: AppStrings.notifications,
          ),
          bottomNavButton(
            icon: AppAssets.exploreIcon,
            label: AppStrings.explore,
          ),
          bottomNavButton(
            icon: AppAssets.profileIcon,
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
}
