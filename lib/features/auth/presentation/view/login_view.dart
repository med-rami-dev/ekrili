import 'package:ekrili/constants.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSecondaryColor,
      body: LoginViewBodyW(),
    );
  }
}
