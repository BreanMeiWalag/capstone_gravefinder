import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:get/get.dart';
import 'package:gravefinder/src/constants/sizes.dart';
import 'package:gravefinder/src/constants/text_strings.dart';
import 'package:gravefinder/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var otpController = Get.put(OTPController());
    var otp;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                tOtpTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0,
                ),
              ),
              Text(
                tOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 40.0),
              const Text(
                "$tOtpMessage $tSupportEmail",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) {
                  otp = code;
                  OTPController.instance.verifyOTP(otp);
                },
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: const Text(tNext),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
