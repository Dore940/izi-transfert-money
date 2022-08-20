import '../controller/onboarding_one_controller.dart';
import '../models/slidergroupseventysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class SlidergroupseventysixItemWidget extends StatelessWidget {
  SlidergroupseventysixItemWidget(this.slidergroupseventysixItemModelObj);

  SlidergroupseventysixItemModel slidergroupseventysixItemModelObj;

  var controller = Get.find<OnboardingOneController>();

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
              svgPath: ImageConstant.imgGroup76,
              height: getVerticalSize(
                246.00,
              ),
              width: getHorizontalSize(
                331.00,
              ),
            ),
            Container(
              width: getHorizontalSize(
                231.00,
              ),
              margin: getMargin(
                left: 2,
                top: 91,
                right: 10,
              ),
              child: Text(
                "msg_make_playing_ea".tr,
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
