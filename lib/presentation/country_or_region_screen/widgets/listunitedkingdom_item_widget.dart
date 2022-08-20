import '../controller/country_or_region_controller.dart';
import '../models/listunitedkingdom_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class ListunitedkingdomItemWidget extends StatelessWidget {
  ListunitedkingdomItemWidget(this.listunitedkingdomItemModelObj);

  ListunitedkingdomItemModel listunitedkingdomItemModelObj;

  var controller = Get.find<CountryOrRegionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: AppDecoration.outlineBluegray10012.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 20,
                top: 18,
                bottom: 17,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CommonImageView(
                    imagePath: ImageConstant.imgUnitedkingdom,
                    height: getSize(
                      25.00,
                    ),
                    width: getSize(
                      25.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 19,
                      top: 5,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_united_kingdom".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular16.copyWith(),
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
                left: 98,
                top: 23,
                right: 22,
                bottom: 22,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    7.50,
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.black900,
                  width: getHorizontalSize(
                    1.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
