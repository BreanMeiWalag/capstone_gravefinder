import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:gravefinder/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:gravefinder/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPasswordTitle, style: txtTheme.headline2),
              Text(tForgetPasswordSubTitle, style: txtTheme.bodyText2),
              const SizedBox(height: 30.0),
              ForgetPasswordBtnWidget(
                onTap: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordMailScreen());
                },
                title: tEmail,
                subTitle: tResetViaEMail,
                btnIcon: Icons.mail_outline_rounded,
              ),
              const SizedBox(height: 20.0),
              ForgetPasswordBtnWidget(
                onTap: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordPhoneScreen());
                },
                title: tPhone,
                subTitle: tResetViaPhone,
                btnIcon: Icons.mobile_friendly_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
