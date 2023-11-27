import 'package:flutter/material.dart';

class WebLoginPage extends StatefulWidget {
  final VoidCallback showSignUpPage;
  const WebLoginPage({super.key, required this.showSignUpPage});

  @override
  State<WebLoginPage> createState() => _WebLoginPageState();
}

class _WebLoginPageState extends State<WebLoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
