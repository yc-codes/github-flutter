import 'package:flutter/material.dart';
import 'package:github_flutter/screens/master.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF050505),
        primarySwatch: Colors.blue,
        fontFamily: "Inter",
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          backgroundColor: Color(0xFF17181C),
          selectedItemColor: Color(0xFF58A6FF),
          unselectedItemColor: Color(0xFF71747D),
        ),
      ),
      home: MasterScreen(),
      themeMode: ThemeMode.dark,
    );
  }
}
