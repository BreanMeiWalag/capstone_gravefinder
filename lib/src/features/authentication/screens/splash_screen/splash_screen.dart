import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:gravefinder/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:gravefinder/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:gravefinder/src/constants/image_strings.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          TFadeInAnimation(
              durationInMs: 1800,
              animate: TAnimatePosition(
                leftAfter: tDefaultSize,
                leftBefore: -60,
                topAfter: tDefaultSize,
                topBefore: tDefaultSize,
              ),
              child: Text(tAppTagLine,
                  style: Theme.of(context).textTheme.headline2)),
          TFadeInAnimation(
            durationInMs: 1800,
            animate: TAnimatePosition(bottomAfter: 120, bottomBefore: 0),
            child: Image(
                image: const AssetImage(tSplashImage),
                width: MediaQuery.sizeOf(context).width - 20),
          ),
        ]),
      ),
    );
  }
}
