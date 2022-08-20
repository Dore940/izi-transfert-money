import 'controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_checkbox.dart';
import 'package:izi_transfert/widgets/custom_text_form_field.dart';

class LoginPageScreen extends GetWidget<LoginPageController> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 30,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomButton(
                          width: 80,
                          text: "lbl_login".tr,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll10,
                          fontStyle: ButtonFontStyle.PoppinsMedium16,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 19,
                            top: 13,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_sign_up".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtPoppinsSemiBold16Gray500.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 59,
                        right: 24,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgIllustration180X190,
                        height: getVerticalSize(
                          180.00,
                        ),
                        width: getHorizontalSize(
                          190.00,
                        ),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.emailController2,
                    margin: getMargin(
                      left: 24,
                      top: 93,
                      right: 24,
                    ),
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 25,
                        right: 1,
                        bottom: 10,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCheckmark13X13,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        13.00,
                      ),
                      minHeight: getVerticalSize(
                        13.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 27,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Gray500
                                      .copyWith(),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_xyz123".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular14.copyWith(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                              bottom: 4,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgCheckmark13X13,
                              height: getSize(
                                13.00,
                              ),
                              width: getSize(
                                13.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      326.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 6,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.bluegray100,
                    ),
                  ),
                  Obx(
                    () => CustomCheckbox(
                      text: "msg_remeber_me_for".tr,
                      iconSize: 13,
                      value: controller.checkbox.value,
                      padding: getPadding(
                        left: 24,
                        top: 27,
                        right: 24,
                      ),
                      onChange: (value) {
                        controller.checkbox.value = value;
                      },
                    ),
                  ),
                  CustomButton(
                    width: 327,
                    text: "lbl_login".tr,
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 74,
                        right: 24,
                        bottom: 20,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_already_have_an2".tr,
                              style: TextStyle(
                                color: ColorConstant.bluegray400,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_sign_up".tr,
                              style: TextStyle(
                                color: ColorConstant.indigoA100,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
