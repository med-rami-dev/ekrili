import 'package:ekrili/core/utils/screen_size.dart';
import 'package:ekrili/core/widgets/custom_button.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ResetPasswordBodyW(),
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}

class ResetPasswordBodyW extends StatelessWidget {
  const ResetPasswordBodyW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Reset Password',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter your email address and we will send you a link to reset your password',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomTextField(
                labelText: 'Email Address',
                controller: TextEditingController(),
                isPassword: false,
                keyboardType: TextInputType.emailAddress,
                displayIcon: true,
                focusBorder: InputBorder.none,
                enableBorder: InputBorder.none,
                prefixIcon: const Icon(Icons.email)),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: ScreenSize.screenWidth * 0.7,
              height: 55,
              child: CustomButton(
                text: 'Send Reset Password Link',
                onPressed: () {
                  //? Add the logic here to send the reset password link
                },
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
