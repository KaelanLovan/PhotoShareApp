import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:photo_share/pages/auth/auth_page.dart';
import 'package:photo_share/pages/mobile/home_mobile.dart';
import 'package:photo_share/pages/web/home_web.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (kIsWeb) {
              return const WebHomePage();
            } else {
              return const MobileHomePage();
            }
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
