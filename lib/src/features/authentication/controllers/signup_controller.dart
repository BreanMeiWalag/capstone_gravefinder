import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gravefinder/src/repository/authentication_repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //Textfield Controllers to get data from Textfields
  final fullName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNo = TextEditingController();
  final role = TextEditingController();

  //Call these Functions from Design & they will do the logic
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  //Get phoneNo from user and pass it to Auth Repository for Firebase Authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
