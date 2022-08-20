import 'controller/phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class PhoneNumberScreen extends GetWidget<PhoneNumberController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(top: 10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        height: 30,
                                        width: 30,
                                        margin: getMargin(left: 24, right: 24),
                                        alignment: Alignment.centerLeft,
                                        onTap: () {
                                          onTapBtntf();
                                        },
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftBlack900)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 25, right: 24),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgIllustration,
                                                height: getVerticalSize(154.00),
                                                width: getHorizontalSize(
                                                    280.00)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 31, right: 24),
                                            child: Text(
                                                "msg_your_phone_numb".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(191.00),
                                            margin: getMargin(
                                                left: 24, top: 32, right: 24),
                                            child: Text(
                                                "msg_we_may_send_a_v".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium14Bluegray400
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 24, top: 23, right: 24),
                                            decoration: AppDecoration
                                                .outlineBluegray10012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 21,
                                                          top: 17,
                                                          bottom: 18),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      2.50)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgUnitedstates1,
                                                              height:
                                                                  getVerticalSize(
                                                                      15.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 23,
                                                          bottom: 23),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBlack900,
                                                          height:
                                                              getVerticalSize(
                                                                  4.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  8.00))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          25.00),
                                                      width: getHorizontalSize(
                                                          1.00),
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 13,
                                                          bottom: 12),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray100)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 17,
                                                          bottom: 18),
                                                      child: Text(
                                                          "lbl_1_202_555_0109"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular14
                                                              .copyWith()))
                                                ]))),
                                    CustomButton(
                                        width: 327,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(
                                            left: 24, top: 20, right: 24),
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(267.00),
                                            width: size.width,
                                            margin: getMargin(top: 20),
                                            decoration:
                                                AppDecoration.fillBluegray101,
                                            child: Stack(children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 9,
                                                          right: 19,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage1,
                                                          height:
                                                              getVerticalSize(
                                                                  225.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  337.00))))
                                            ])))
                                  ])))
                    ]))));
  }

  onTapBtntf() {
    Get.back();
  }
}
