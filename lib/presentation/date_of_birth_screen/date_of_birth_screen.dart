import 'controller/date_of_birth_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class DateOfBirthScreen extends GetWidget<DateOfBirthController> {
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
                                                left: 24, top: 22, right: 24),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgIllustration160X203,
                                                height: getVerticalSize(160.00),
                                                width: getHorizontalSize(
                                                    203.00)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 28, right: 24),
                                            child: Text(
                                                "msg_your_date_of_bi".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold20
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(300.00),
                                            margin: getMargin(
                                                left: 24, top: 32, right: 24),
                                            child: Text(
                                                "msg_the_date_of_bir".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium14Bluegray400
                                                    .copyWith()))),
                                    CustomButton(
                                        width: 327,
                                        text: "lbl_20_jan_1998".tr,
                                        margin: getMargin(
                                            left: 24, top: 23, right: 24),
                                        variant:
                                            ButtonVariant.OutlineBluegray100,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsRegular14,
                                        alignment: Alignment.center),
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
