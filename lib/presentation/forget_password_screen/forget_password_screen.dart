import 'controller/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:izi_transfert/widgets/custom_text_form_field.dart';

class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
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
                              padding: getPadding(left: 24, top: 69, right: 24),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgIllustration210X280,
                                  height: getVerticalSize(210.00),
                                  width: getHorizontalSize(280.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 46, right: 24),
                              child: Text("lbl_forget_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(245.00),
                              margin: getMargin(left: 24, top: 27, right: 24),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_please_enter_yo2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "msg_verification_co".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA100,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.center))),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.emailController1,
                          hintText: "msg_primelementbank".tr,
                          margin: getMargin(left: 24, top: 29, right: 24),
                          variant: TextFormFieldVariant.OutlineBluegray100,
                          shape: TextFormFieldShape.RoundedBorder13,
                          padding: TextFormFieldPadding.PaddingT19,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      CustomButton(
                          width: 327,
                          text: "lbl_send_email".tr,
                          margin: getMargin(left: 24, top: 20, right: 24),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 120, right: 24, bottom: 20),
                              child: Text("lbl_back_to_again".tr,
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
