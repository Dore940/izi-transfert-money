import '../controller/sign_up_page_controller.dart';
import '../models/sign_up_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class SignUpPageItemWidget extends StatelessWidget {
  SignUpPageItemWidget(this.signUpPageItemModelObj);

  SignUpPageItemModel signUpPageItemModelObj;

  var controller = Get.find<SignUpPageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 15.0,
        bottom: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: getMargin(
              top: 4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_password".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16Gray500.copyWith(),
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
                    style: AppStyle.txtPoppinsRegular14.copyWith(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 232,
              top: 31,
              bottom: 3,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgPlay,
              height: getVerticalSize(
                10.00,
              ),
              width: getHorizontalSize(
                16.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
