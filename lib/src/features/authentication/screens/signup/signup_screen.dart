import 'package:flutter/material.dart';
import 'package:gravefinder/src/common_widgets/form/form_header_widget.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: tDashboardCategoryImage1,
                    title: tSignUpTitle,
                    subtitle: tSignUpSubTitle),
                SignUpFormWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
