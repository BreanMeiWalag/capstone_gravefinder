import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:gravefinder/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:gravefinder/src/common_widgets/form/form_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    image: tLoginScreenImage,
                    title: tLoginTitle,
                    subtitle: tLoginSubTitle),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
