import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/common_widgets/form/form_header_widget.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4),
                const FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tForgetPassword,
                  subtitle: tForgetPhoneSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tPhone),
                        hintText: tPhone,
                        prefixIcon: Icon(Icons.mobile_friendly_rounded),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const OTPScreen());
                        },
                        child: const Text(tNext),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
