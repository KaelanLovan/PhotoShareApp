import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:photo_share/pages/mobile/login_mobile.dart';
import 'package:photo_share/pages/mobile/signup_mobile.dart';
import 'package:photo_share/pages/web/login_web.dart';
import 'package:photo_share/pages/web/signup_web.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      //Web Pages
      if (showLoginPage) {
        return WebLoginPage(showSignUpPage: toggleScreens);
      } else {
        return WebSignUpPage(showLoginPage: toggleScreens);
      }
    } else {
      //Mobile Pages
      if (showLoginPage) {
        return MobileLoginPage();
      } else {
        return MobileSignUpPage();
      }
    }
  }
}
