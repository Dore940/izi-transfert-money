import '/core/app_export.dart';
import 'package:izi_transfert/presentation/transfer_request_screen/models/transfer_request_model.dart';
import 'package:flutter/material.dart';

class TransferRequestController extends GetxController {
  TextEditingController transferController1 = TextEditingController();

  TextEditingController requestController1 = TextEditingController();

  TextEditingController searchbarController = TextEditingController();

  Rx<TransferRequestModel> transferRequestModelObj = TransferRequestModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    transferController1.dispose();
    requestController1.dispose();
    searchbarController.dispose();
  }
}
