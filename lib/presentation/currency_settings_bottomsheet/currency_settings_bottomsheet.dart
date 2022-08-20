import '../currency_settings_bottomsheet/widgets/listclock_item_widget.dart';
import 'controller/currency_settings_controller.dart';
import 'models/listclock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CurrencySettingsBottomsheet extends StatelessWidget {
  CurrencySettingsBottomsheet(this.controller);

  CurrencySettingsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: getPadding(left: 24, top: 26, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_currency".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold18
                                              .copyWith())),
                                  GestureDetector(
                                      onTap: () {
                                        onTapImgClose();
                                      },
                                      child: Padding(
                                          padding: getPadding(bottom: 4),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgClose,
                                              height: getSize(18.00),
                                              width: getSize(18.00))))
                                ])),
                        Padding(
                            padding: getPadding(
                                left: 24, top: 12, right: 24, bottom: 70),
                            child: Obx(() => ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.currencySettingsModelObj
                                    .value.listclockItemList.length,
                                itemBuilder: (context, index) {
                                  ListclockItemModel model = controller
                                      .currencySettingsModelObj
                                      .value
                                      .listclockItemList[index];
                                  return ListclockItemWidget(model,
                                      onTapImgClock: onTapImgClock);
                                })))
                      ])))
        ])));
  }

  onTapImgClock() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgClose() {
    Get.back();
  }
}
