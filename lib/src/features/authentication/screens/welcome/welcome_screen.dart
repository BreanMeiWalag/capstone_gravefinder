import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:gravefinder/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:gravefinder/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/screens/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    final txtTheme = Theme.of(context).textTheme;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(tWelcomeScreenImage),
                      height: height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(tWelcomeTitle, style: txtTheme.headline3),
                        Text(
                          tWelcomeSubTitle,
                          style: txtTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text(tGetStarted)))
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(tIfAdmin, style: txtTheme.bodyText1),
                        TextButton(
                            onPressed: () => Get.to(() => const LoginScreen()),
                            child: const Text(tClickHere))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
