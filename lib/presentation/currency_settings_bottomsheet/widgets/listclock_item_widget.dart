import '../controller/currency_settings_controller.dart';
import '../models/listclock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget(this.listclockItemModelObj, {this.onTapImgClock});

  ListclockItemModel listclockItemModelObj;

  var controller = Get.find<CurrencySettingsController>();

  VoidCallback? onTapImgClock;

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
              top: 16,
              bottom: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    onTapImgClock!();
                  },
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClock20X20,
                    height: getSize(
                      20.00,
                    ),
                    width: getSize(
                      20.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
                    top: 3,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_usd".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium15Bluegray400.copyWith(),
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
              left: 211,
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
