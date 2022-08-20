import '../history_screen/widgets/listfire_item_widget.dart';
import '../history_screen/widgets/listvector_one_item_widget.dart';
import '../history_screen/widgets/listvolume_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/listfire_item_model.dart';
import 'models/listvector_one_item_model.dart';
import 'models/listvolume_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 24, top: 7, right: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                        height: 35,
                                        width: 35,
                                        shape: IconButtonShape.RoundedBorder17,
                                        onTap: () {
                                          onTapBtntf();
                                        },
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftBlack900)),
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 4),
                                        child: Text("msg_transfer_reques".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsSemiBold18
                                                .copyWith())),
                                    CustomIconButton(
                                        height: 35,
                                        width: 35,
                                        shape: IconButtonShape.RoundedBorder17,
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgSearchBlack90035X35))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 35, right: 24),
                          child: Text("lbl_today_25_june".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10.copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 19, right: 24),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.historyModelObj.value
                                      .listfireItemList.length,
                                  itemBuilder: (context, index) {
                                    ListfireItemModel model = controller
                                        .historyModelObj
                                        .value
                                        .listfireItemList[index];
                                    return ListfireItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 24),
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10.copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 19, right: 24),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.historyModelObj.value
                                      .listvolumeItemList.length,
                                  itemBuilder: (context, index) {
                                    ListvolumeItemModel model = controller
                                        .historyModelObj
                                        .value
                                        .listvolumeItemList[index];
                                    return ListvolumeItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 24),
                          child: Text("lbl_20_june_20222".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10.copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 18, right: 24, bottom: 11),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.historyModelObj.value
                                      .listvectorOneItemList.length,
                                  itemBuilder: (context, index) {
                                    ListvectorOneItemModel model = controller
                                        .historyModelObj
                                        .value
                                        .listvectorOneItemList[index];
                                    return ListvectorOneItemWidget(model);
                                  }))))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
