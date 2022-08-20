import '../controller/history_controller.dart';
import '../models/listfire_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListfireItemWidget extends StatelessWidget {
  ListfireItemWidget(this.listfireItemModelObj);

  ListfireItemModel listfireItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 7.5,
          right: 1,
          bottom: 7.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomIconButton(
              height: 50,
              width: 50,
              variant: IconButtonVariant.FillGray100,
              child: CommonImageView(
                svgPath: ImageConstant.imgFire,
              ),
            ),
            Container(
              margin: getMargin(
                left: 15,
                top: 9,
                bottom: 4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      261.00,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_apple_store".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium14.copyWith(),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_220_00".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium11.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      261.00,
                    ),
                    margin: getMargin(
                      top: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "lbl_21_june_2022".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium10.copyWith(),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 5,
                          ),
                          child: Text(
                            "lbl_debit_card".tr,
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
            ),
          ],
        ),
      ),
    );
  }
}
