import '/core/app_export.dart';
import 'package:izi_transfert/presentation/address_screen/models/address_model.dart';
import 'package:flutter/material.dart';

class AddressController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  TextEditingController houseflatnoController = TextEditingController();

  TextEditingController streetaddressController = TextEditingController();

  TextEditingController postcodeController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  Rx<AddressModel> addressModelObj = AddressModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
    houseflatnoController.dispose();
    streetaddressController.dispose();
    postcodeController.dispose();
    stateController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    addressModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addressModelObj.value.dropdownItemList.refresh();
  }
}
