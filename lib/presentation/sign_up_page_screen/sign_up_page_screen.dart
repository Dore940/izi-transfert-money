import '../sign_up_page_screen/widgets/sign_up_page_item_widget.dart';
import 'controller/sign_up_page_controller.dart';
import 'models/sign_up_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_text_form_field.dart';

class SignUpPageScreen extends GetWidget<SignUpPageController> {
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
                        Padding(
                          padding: getPadding(
                            top: 13,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_login".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtPoppinsMedium16Gray500.copyWith(),
                          ),
                        ),
                        CustomButton(
                          width: 100,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(
                            left: 19,
                          ),
                          shape: ButtonShape.RoundedBorder7,
                          padding: ButtonPadding.PaddingAll10,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 70,
                        right: 24,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            width: 327,
                            focusNode: FocusNode(),
                            controller: controller.nameController,
                            margin: getMargin(
                              top: 4,
                            ),
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 24,
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
                          CustomTextFormField(
                            width: 327,
                            focusNode: FocusNode(),
                            controller: controller.emailController,
                            margin: getMargin(
                              top: 26,
                            ),
                          ),
                          CustomTextFormField(
                            width: 327,
                            focusNode: FocusNode(),
                            controller: controller.phoneController,
                            margin: getMargin(
                              top: 27,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      326.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.bluegray100,
                                    ),
                                  );
                                },
                                itemCount: controller.signUpPageModelObj.value
                                    .signUpPageItemList.length,
                                itemBuilder: (context, index) {
                                  SignUpPageItemModel model = controller
                                      .signUpPageModelObj
                                      .value
                                      .signUpPageItemList[index];
                                  return SignUpPageItemWidget(
                                    model,
                                  );
                                },
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
                              left: 1,
                              top: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray100,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 23,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomTextFormField(
                                  width: 155,
                                  focusNode: FocusNode(),
                                  controller: controller.dateController,
                                  margin: getMargin(
                                    top: 3,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                    margin: getMargin(
                                      left: 30,
                                      top: 29,
                                      right: 10,
                                      bottom: 15,
                                    ),
                                    child: CommonImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftBlack900,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(
                                      8.00,
                                    ),
                                    minHeight: getVerticalSize(
                                      4.00,
                                    ),
                                  ),
                                ),
                                CustomTextFormField(
                                  width: 156,
                                  focusNode: FocusNode(),
                                  controller: controller.countryController,
                                  suffix: Container(
                                    margin: getMargin(
                                      left: 30,
                                      top: 30,
                                      right: 10,
                                      bottom: 15,
                                    ),
                                    child: CommonImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftBlack900,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(
                                      8.00,
                                    ),
                                    minHeight: getVerticalSize(
                                      4.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                        top: 77,
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
                              text: "lbl_sign_in".tr,
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
