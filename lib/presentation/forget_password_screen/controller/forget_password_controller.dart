import '/core/app_export.dart';
import 'package:izi_transfert/presentation/forget_password_screen/models/forget_password_model.dart';
import 'package:flutter/material.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController emailController1 = TextEditingController();

  Rx<ForgetPasswordModel> forgetPasswordModelObj = ForgetPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController1.dispose();
  }
}
