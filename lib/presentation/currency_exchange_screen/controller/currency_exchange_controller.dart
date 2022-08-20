import '/core/app_export.dart';
import 'package:izi_transfert/presentation/currency_exchange_screen/models/currency_exchange_model.dart';
import 'package:flutter/material.dart';

class CurrencyExchangeController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceTwoController = TextEditingController();

  Rx<CurrencyExchangeModel> currencyExchangeModelObj =
      CurrencyExchangeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceTwoController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    currencyExchangeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    currencyExchangeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    currencyExchangeModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    currencyExchangeModelObj.value.dropdownItemList1.refresh();
  }
}
