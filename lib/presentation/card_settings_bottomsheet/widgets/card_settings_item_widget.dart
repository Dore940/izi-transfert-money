import '../controller/card_settings_controller.dart';
import '../models/card_settings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class CardSettingsItemWidget extends StatelessWidget {
  CardSettingsItemWidget(this.cardSettingsItemModelObj);

  CardSettingsItemModel cardSettingsItemModelObj;

  var controller = Get.find<CardSettingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 7.5,
        bottom: 7.5,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 15,
              top: 15,
              bottom: 14,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgComputer15X23,
                  height: getVerticalSize(
                    23.00,
                  ),
                  width: getHorizontalSize(
                    36.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 10,
                    bottom: 9,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.img1,
                    height: getVerticalSize(
                      4.00,
                    ),
                    width: getHorizontalSize(
                      32.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 10,
                    bottom: 9,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.img1,
                    height: getVerticalSize(
                      4.00,
                    ),
                    width: getHorizontalSize(
                      32.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 6,
                    bottom: 6,
                  ),
                  child: Text(
                    "lbl_4023".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium10Bluegray400.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 6,
                    bottom: 6,
                  ),
                  child: Text(
                    "lbl_5534".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium10Bluegray400.copyWith(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getSize(
              15.00,
            ),
            width: getSize(
              15.00,
            ),
            margin: getMargin(
              left: 76,
              top: 19,
              right: 20,
              bottom: 18,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  7.54,
                ),
              ),
              border: Border.all(
                color: ColorConstant.bluegray100,
                width: getHorizontalSize(
                  1.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
