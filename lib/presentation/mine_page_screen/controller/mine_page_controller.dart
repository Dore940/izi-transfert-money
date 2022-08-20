import '/core/app_export.dart';
import 'package:izi_transfert/presentation/mine_page_screen/models/mine_page_model.dart';
import 'package:flutter/material.dart';

class MinePageController extends GetxController {
  TextEditingController transferController = TextEditingController();

  TextEditingController requestController = TextEditingController();

  Rx<MinePageModel> minePageModelObj = MinePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    transferController.dispose();
    requestController.dispose();
  }
}
