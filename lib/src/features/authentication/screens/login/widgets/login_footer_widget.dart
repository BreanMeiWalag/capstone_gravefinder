import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(tIfNotAdmin, style: Theme.of(context).textTheme.bodyText1),
        TextButton(
          onPressed: () => Get.back(),
          child: const Text(tClickHere),
        )
      ],
    );
  }
}
