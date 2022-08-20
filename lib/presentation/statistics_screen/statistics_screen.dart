import '../statistics_screen/widgets/statistics_item_widget.dart';
import 'controller/statistics_controller.dart';
import 'models/statistics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_drop_down.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class StatisticsScreen extends GetWidget<StatisticsController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 24, top: 7, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                    padding: getPadding(top: 8, bottom: 8),
                                    child: Text("lbl_statistics".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold18
                                            .copyWith())),
                                CustomIconButton(
                                    height: 35,
                                    width: 35,
                                    shape: IconButtonShape.RoundedBorder17,
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgSearchBlack900))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 40, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_1_500_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium30
                                            .copyWith())),
                                CustomDropDown(
                                    width: 70,
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 10, right: 14),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownGray500)),
                                    hintText: "lbl_usd".tr,
                                    margin: getMargin(left: 27, bottom: 1),
                                    items: controller.statisticsModelObj.value
                                        .dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(50.00),
                          width: getHorizontalSize(327.00),
                          margin: getMargin(left: 24, top: 30, right: 24),
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.whiteA700,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(7.00))),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 40,
                                            top: 18,
                                            right: 40,
                                            bottom: 17),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgElement,
                                            height: getVerticalSize(15.00),
                                            width: getHorizontalSize(198.00)))),
                                CustomButton(
                                    width: 65,
                                    text: "lbl_w".tr,
                                    margin: getMargin(
                                        left: 40,
                                        top: 10,
                                        right: 40,
                                        bottom: 10),
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll7,
                                    fontStyle: ButtonFontStyle.PoppinsMedium15,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 27,
                                            top: 17,
                                            right: 22,
                                            bottom: 16),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text("lbl_d".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium15
                                                                .copyWith()),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 52),
                                                            child: Text(
                                                                "lbl_m".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium15
                                                                    .copyWith()))
                                                      ])),
                                              Padding(
                                                  padding:
                                                      getPadding(left: 118),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_y".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium15
                                                                    .copyWith())),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 53,
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_all".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium14Bluegray100
                                                                    .copyWith()))
                                                      ]))
                                            ])))
                              ]))),
                      Container(
                          margin: getMargin(left: 24, top: 40, right: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                              margin:
                                                  getMargin(top: 6, bottom: 6),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1, right: 10),
                                                        child: Text(
                                                            "lbl_sun".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10
                                                                .copyWith())),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 13),
                                                        child: Text(
                                                            "lbl_mon".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10
                                                                .copyWith())),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 13,
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_tue".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10
                                                                .copyWith())),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 12),
                                                            child: Text(
                                                                "lbl_wed".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium10
                                                                    .copyWith()))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 13,
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_thu".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10
                                                                .copyWith())),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 11,
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_fri".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10
                                                                .copyWith())),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 13,
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_sat".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10
                                                                .copyWith()))
                                                  ])),
                                          CommonImageView(
                                              svgPath: ImageConstant.imgGraph,
                                              height: getVerticalSize(161.00),
                                              width: getHorizontalSize(291.00))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 12, right: 4, bottom: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 1),
                                              child: Text("lbl_0".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Gray500
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  left: 42, top: 1, bottom: 1),
                                              child: Text("lbl_20".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Gray500
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  left: 43, top: 1, bottom: 1),
                                              child: Text("lbl_40".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Gray500
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  left: 41, bottom: 1),
                                              child: Text("lbl_60".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Gray500
                                                      .copyWith())),
                                          Padding(
                                              padding:
                                                  getPadding(left: 41, top: 1),
                                              child: Text("lbl_80".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Gray500
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  left: 39, top: 1, bottom: 1),
                                              child: Text("lbl_100".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Gray500
                                                      .copyWith()))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(left: 24, top: 30, right: 24),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                    width: 115,
                                    text: "lbl_income".tr,
                                    margin: getMargin(top: 5, bottom: 5),
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll13,
                                    fontStyle: ButtonFontStyle.PoppinsMedium15),
                                Padding(
                                    padding: getPadding(
                                        left: 28, top: 20, bottom: 14),
                                    child: Text("lbl_expense".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium14
                                            .copyWith()))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 27, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_recent_transfer".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18
                                        .copyWith()),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 2),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium12
                                            .copyWith()))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 24, top: 17, right: 24, bottom: 24),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.statisticsModelObj.value
                                  .statisticsItemList.length,
                              itemBuilder: (context, index) {
                                StatisticsItemModel model = controller
                                    .statisticsModelObj
                                    .value
                                    .statisticsItemList[index];
                                return StatisticsItemWidget(model);
                              })))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
