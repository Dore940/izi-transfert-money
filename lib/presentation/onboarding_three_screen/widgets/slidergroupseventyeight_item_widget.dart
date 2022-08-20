import '../controller/onboarding_three_controller.dart';
import '../models/slidergroupseventyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class SlidergroupseventyeightItemWidget extends StatelessWidget {
  SlidergroupseventyeightItemWidget(this.slidergroupseventyeightItemModelObj);

  SlidergroupseventyeightItemModel slidergroupseventyeightItemModelObj;

  var controller = Get.find<OnboardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CommonImageView(
              svgPath: ImageConstant.imgGroup78,
              height: getVerticalSize(
                215.00,
              ),
              width: getHorizontalSize(
                331.00,
              ),
            ),
            Container(
              width: getHorizontalSize(
                281.00,
              ),
              margin: getMargin(
                left: 2,
                top: 109,
                right: 10,
              ),
              child: Text(
                "msg_we_guarantee_sa".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium35.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
