import 'controller/verified_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class VerifiedScreen extends GetWidget<VerifiedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      CustomIconButton(
                          height: 30,
                          width: 30,
                          margin: getMargin(left: 24, top: 10, right: 24),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 74, right: 24),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgIllustration200X167,
                                  height: getVerticalSize(200.00),
                                  width: getHorizontalSize(167.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 52, right: 24),
                              child: Text("msg_confirm_your_em".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(241.00),
                              margin: getMargin(left: 24, top: 28, right: 24),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_we_sent_a_confi2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "msg_primelementbank2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA100,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.center))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(240.00),
                              margin: getMargin(left: 24, top: 28, right: 24),
                              child: Text("msg_check_your_emai".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsMedium14Bluegray400
                                      .copyWith()))),
                      CustomButton(
                          width: 327,
                          text: "lbl_back_to_home".tr,
                          margin: getMargin(left: 24, top: 29, right: 24),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 122, right: 24, bottom: 20),
                              child: Text("lbl_resend_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium16.copyWith())))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
