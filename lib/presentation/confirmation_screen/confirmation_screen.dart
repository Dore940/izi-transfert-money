import 'controller/confirmation_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';

class ConfirmationScreen extends GetWidget<ConfirmationController> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 109,
                        top: 158,
                        right: 109,
                      ),
                      child: Text(
                        "lbl_confirmation".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold18.copyWith(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 86,
                        top: 74,
                        right: 86,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgIllustration200X179,
                        height: getVerticalSize(
                          200.00,
                        ),
                        width: getHorizontalSize(
                          179.00,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 327,
                    text: "lbl_back_home".tr,
                    margin: getMargin(
                      left: 24,
                      top: 70,
                      right: 24,
                      bottom: 20,
                    ),
                    shape: ButtonShape.RoundedBorder7,
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
