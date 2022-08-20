import '../controller/onboarding_two_controller.dart';
import '../models/slidergroupseventyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class SlidergroupseventysevenItemWidget extends StatelessWidget {
  SlidergroupseventysevenItemWidget(this.slidergroupseventysevenItemModelObj);

  SlidergroupseventysevenItemModel slidergroupseventysevenItemModelObj;

  var controller = Get.find<OnboardingTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CommonImageView(
                svgPath: ImageConstant.imgGroup77,
                height: getVerticalSize(
                  245.00,
                ),
                width: getHorizontalSize(
                  330.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  236.00,
                ),
                margin: getMargin(
                  left: 7,
                  top: 93,
                  right: 10,
                ),
                child: Text(
                  "msg_easy_way_to_man".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium35.copyWith(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
