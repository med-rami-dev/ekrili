import 'package:ekrili/constants.dart';
import 'package:ekrili/core/utils/styles.dart';
import 'package:ekrili/core/widgets/custom_button.dart';
import 'package:ekrili/features/auth/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class UserViewBodyW extends StatelessWidget {
  const UserViewBodyW({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'https://randomuser.me/api/portraits/men/56.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(height: 15),
            Text(
              "Mohamed Rami",
              style: Styles.textStyle30.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 5),
            const Text("contact@mohamedrami.me", style: Styles.textStyle16),
            const SizedBox(height: kPrimaryHeightBetweenW),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.person),
                  labelText: 'Full Name',
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  controller: TextEditingController(),
                  isPassword: false,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            const SizedBox(height: kPrimaryHeightBetweenW),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kPrimaryHeightBetweenW),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email Address',
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  controller: TextEditingController(),
                  isPassword: false,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            const SizedBox(height: kPrimaryHeightBetweenW),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.location_on),
                  labelText: 'Location',
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  controller: TextEditingController(),
                  isPassword: false,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            const SizedBox(height: kPrimaryHeightBetweenW),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.phone),
                  labelText: 'Phone Number',
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  controller: TextEditingController(),
                  isPassword: false,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            const SizedBox(height: kPrimaryHeightBetweenW),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Reset Password',
                  enableBorder: InputBorder.none,
                  focusBorder: InputBorder.none,
                  controller: TextEditingController(),
                  isPassword: false,
                  keyboardType: TextInputType.text,
                  displayIcon: true,
                )),
            const SizedBox(height: kPrimaryHeightBetweenW),
            CustomButton(
              onPressed: () {},
              text: 'Save Changes',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
