import '../controller/send_money_controller.dart';
import '../models/send_money_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

// ignore: must_be_immutable
class SendMoneyItemWidget extends StatelessWidget {
  SendMoneyItemWidget(this.sendMoneyItemModelObj);

  SendMoneyItemModel sendMoneyItemModelObj;

  var controller = Get.find<SendMoneyController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          left: 3,
          top: 18.044998,
          right: 1,
          bottom: 18.044998,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Text(
                "lbl_1".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium20.copyWith(),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 98,
                bottom: 1,
              ),
              child: Text(
                "lbl_2".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium20.copyWith(),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 96,
                top: 1,
                bottom: 1,
              ),
              child: Text(
                "lbl_3".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium20.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
