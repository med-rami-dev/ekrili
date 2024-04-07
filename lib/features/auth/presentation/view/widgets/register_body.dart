import 'package:ekrili/core/utils/app_router.dart';
import 'package:ekrili/core/utils/assets_path.dart';
import 'package:ekrili/core/utils/screen_size.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/login_register_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBodyW extends StatelessWidget {
  const RegisterViewBodyW({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AssetsPaths.loginViewBackground,
                height: ScreenSize.screenHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: ScreenSize.screenHeight * 0.15),
                  LoginRegisterW(
                    formTitle: 'Create Account',
                    buttonText: 'Sign Up',
                    isRegister: true,
                    buttonColor: Colors.green,
                    emailController:
                        TextEditingController(), // ? Change This With Your email Controller
                    passwordController:
                        TextEditingController(), // ? Change This With Your Password Controller
                    actionText: '',
                    forgetPasswordOnPressed: () {},
                    onPressed: () {},
                    thirdText: 'Login Now',
                    beforeThirdText: 'Already have an account?',
                    thirdTextOnPressed: () {
                      context.push(AppRouter.loginView);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
