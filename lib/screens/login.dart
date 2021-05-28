import 'package:flutter/material.dart';
import 'package:github_flutter/utility/app_colors.dart';
import 'package:github_flutter/widgets/button/app_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/logos/icon.png',
              height: 90,
            ),
            // child: Text(
            //   'asdasd',
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppButton(
                  "SIGN IN WITH GITHUB",
                  onClick: () {},
                  isLoading: isLoading,
                ),
                SizedBox(height: 8),
                AppButton(
                  "SIGN IN WITH GITHUB ENTERPRICE",
                  onClick: () {
                    print('adasd');
                    setState(() {
                      isLoading = !isLoading;
                    });
                  },
                  varient: AppButtonVarient.secondary,
                ),
                SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    text: 'By Signing in you accept our ',
                    // style: DefaultTextStyle.of(context).style,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Terms of use',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy policy',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: ' .'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
