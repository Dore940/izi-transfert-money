import '/core/app_export.dart';
import 'package:izi_transfert/presentation/login_page_screen/models/login_page_model.dart';
import 'package:flutter/material.dart';

class LoginPageController extends GetxController {
  TextEditingController emailController2 = TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController2.dispose();
  }
}
