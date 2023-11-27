import 'package:flutter/material.dart';

class WebSignUpPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const WebSignUpPage({super.key, required this.showLoginPage});

  @override
  State<WebSignUpPage> createState() => _WebSignUpPageState();
}

class _WebSignUpPageState extends State<WebSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
