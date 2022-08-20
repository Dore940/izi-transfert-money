import 'controller/verify_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmailScreen extends GetWidget<VerifyEmailController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
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
                              padding: getPadding(left: 24, top: 96, right: 24),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgIllustration154X280,
                                  height: getVerticalSize(154.00),
                                  width: getHorizontalSize(280.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 74, right: 24),
                              child: Text("msg_verify_your_ema".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(241.00),
                              margin: getMargin(left: 24, top: 27, right: 24),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_please_enter_42".tr,
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
                      Padding(
                          padding: getPadding(left: 24, top: 28, right: 24),
                          child: Container(
                              width: getHorizontalSize(230.00),
                              height: getVerticalSize(50.00),
                              child: Obx(() => PinCodeTextField(
                                  appContext: context,
                                  controller: controller.otpController.value,
                                  length: 4,
                                  obscureText: false,
                                  obscuringCharacter: '*',
                                  keyboardType: TextInputType.number,
                                  autoDismissKeyboard: true,
                                  enableActiveFill: true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (value) {},
                                  textStyle: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(18),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400),
                                  pinTheme: PinTheme(
                                      fieldHeight: getHorizontalSize(50.00),
                                      fieldWidth: getHorizontalSize(50.00),
                                      shape: PinCodeFieldShape.circle,
                                      selectedFillColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      activeFillColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      inactiveFillColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      inactiveColor: ColorConstant.bluegray100,
                                      selectedColor: ColorConstant.bluegray100,
                                      activeColor:
                                          ColorConstant.bluegray100))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 17, right: 24),
                              child: Text("lbl_resend_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular14IndigoA100
                                      .copyWith()))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(92.00),
                          margin: getMargin(left: 24, top: 4, right: 24),
                          decoration:
                              BoxDecoration(color: ColorConstant.indigoA100)),
                      CustomButton(
                          width: 327,
                          text: "lbl_verify_code".tr,
                          margin: getMargin(
                              left: 24, top: 19, right: 24, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
