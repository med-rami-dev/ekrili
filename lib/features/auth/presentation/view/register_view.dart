import 'package:ekrili/constants.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSecondaryColor,
      body: RegisterViewBodyW(),
    );
  }
}
