import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:gravefinder/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:gravefinder/src/features/core/screens/dashboard/dashboard.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: tFormHeight - 10),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outlined),
                labelText: tPassword,
                hintText: tPassword,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight),

            // -- FORGET PASSWORD BTN
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(tForgetPassword),
              ),
            ),

            // -- LOGIN BTN
            Row(
              children: [
                //sizedbox
                Expanded(
                  // width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const Dashboard());
                      },
                      child: Text(tLogin.toUpperCase())),
                ),
                const SizedBox(width: tFormHeight),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const SignUpScreen());
                      },
                      child: Text("Temp SignUp".toUpperCase())),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
