import '../controller/transfer_request_controller.dart';
import '../models/listrectanglesixtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListrectanglesixtythreeItemWidget extends StatelessWidget {
  ListrectanglesixtythreeItemWidget(this.listrectanglesixtythreeItemModelObj);

  ListrectanglesixtythreeItemModel listrectanglesixtythreeItemModelObj;

  var controller = Get.find<TransferRequestController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 8.0,
          bottom: 8.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgRectangle63,
                    height: getSize(
                      50.00,
                    ),
                    width: getSize(
                      50.00,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 14,
                    top: 8,
                    bottom: 6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_zander_wiza".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14.copyWith(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_ui_ux_designer".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomIconButton(
              height: 25,
              width: 25,
              margin: getMargin(
                left: 150,
                top: 13,
                bottom: 12,
              ),
              variant: IconButtonVariant.FillDeeppurple50,
              shape: IconButtonShape.RoundedBorder7,
              padding: IconButtonPadding.PaddingAll8,
              child: CommonImageView(
                svgPath: ImageConstant.imgPlus,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
