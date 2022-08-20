import '../controller/national_bank_controller.dart';
import '../models/national_bank_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NationalBankItemWidget extends StatelessWidget {
  NationalBankItemWidget(this.nationalBankItemModelObj, {this.onTapBtntf});

  NationalBankItemModel nationalBankItemModelObj;

  var controller = Get.find<NationalBankController>();

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 7.5,
          bottom: 7.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIconButton(
                  height: 50,
                  width: 50,
                  variant: IconButtonVariant.FillTeal80026,
                  onTap: () {
                    onTapBtntf!();
                  },
                  child: CommonImageView(
                    svgPath: ImageConstant.imgFolder,
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 15,
                    top: 10,
                    bottom: 6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: Text(
                          "lbl_220_00".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium14.copyWith(),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "msg_10_30_pm_18_ju".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium10.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 141,
                top: 23,
                bottom: 22,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgArrowdownGray902,
                height: getVerticalSize(
                  5.00,
                ),
                width: getHorizontalSize(
                  10.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
