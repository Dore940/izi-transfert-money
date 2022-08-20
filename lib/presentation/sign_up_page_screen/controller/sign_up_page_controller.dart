import '/core/app_export.dart';
import 'package:izi_transfert/presentation/sign_up_page_screen/models/sign_up_page_model.dart';
import 'package:flutter/material.dart';

class SignUpPageController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  Rx<SignUpPageModel> signUpPageModelObj = SignUpPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    dateController.dispose();
    countryController.dispose();
  }
}
