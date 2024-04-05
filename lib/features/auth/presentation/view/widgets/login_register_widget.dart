import 'package:ekrili/core/widgets/custom_button.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginRegisterW extends StatefulWidget {
  LoginRegisterW(
      {super.key,
      required this.formTitle,
      required this.buttonText,
      required this.subButtonText,
      required this.isRegister,
      this.buttonColor = Colors.blue,
      required this.emailController,
      required this.passwordController,
      this.userNameController,
      required this.actionText,
      required this.onPressed,
      this.forgetPasswordOnPressed,
      required this.thirdText,
      required this.beforeThirdText,
      required this.thirdTextOnPressed});
  final String formTitle;
  final String beforeThirdText;
  final String thirdText;
  final Function() thirdTextOnPressed;
  final String actionText;
  final String buttonText;
  final String subButtonText;
  final Function() onPressed;
  final Function()? forgetPasswordOnPressed;
  final bool isRegister;

  Color buttonColor;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  late TextEditingController? userNameController;

  @override
  State<LoginRegisterW> createState() => _LoginRegisterWState();
}

class _LoginRegisterWState extends State<LoginRegisterW> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.emailController.dispose();
    widget.passwordController.dispose();
    if (widget.userNameController != null) {
      widget.userNameController!.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        elevation: 1,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              widget.formTitle,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            widget.isRegister
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'User Name',
                      enableBorder: InputBorder.none,
                      focusBorder: InputBorder.none,
                      controller:
                          widget.userNameController ?? TextEditingController(),
                      isPassword: false,
                      keyboardType: TextInputType.text,
                      displayIcon: true,
                    ))
                : const SizedBox(),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email Address',
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  controller: widget.emailController,
                  isPassword: false,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  controller: widget.passwordController,
                  isPassword: true,
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            widget.isRegister
                ? const SizedBox()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: widget.forgetPasswordOnPressed,
                        child: const Text('Forget Password?',
                            style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline)),
                      ),
                    ],
                  ),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: widget.onPressed,
                text: widget.buttonText,
                color: widget.buttonColor),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.beforeThirdText),
                const SizedBox(width: 5),
                InkWell(
                  onTap: widget.thirdTextOnPressed,
                  child: Text(widget.thirdText,
                      style:
                          const TextStyle(color: Colors.green, fontSize: 15)),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
