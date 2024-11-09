import 'package:ezpaynow/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomButton(
          buttonText: 'Sign in',
          onPressed: () {},
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
