import '../transfer_amount_screen/widgets/listone_item_widget.dart';
import 'controller/transfer_amount_controller.dart';
import 'models/listone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class TransferAmountScreen extends GetWidget<TransferAmountController> {
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
                      Container(
                          width: size.width,
                          margin: getMargin(left: 24, top: 7, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    padding:
                                        getPadding(left: 51, top: 8, bottom: 8),
                                    child: Text("lbl_transfer_amount".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold18
                                            .copyWith()))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 32, right: 24),
                              decoration: AppDecoration.outlineBlack90011
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 28, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 13, bottom: 14),
                                                  child: Text("lbl_to".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium12Black900
                                                          .copyWith())),
                                              Padding(
                                                  padding: getPadding(left: 14),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  20.00)),
                                                      child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse31140X40,
                                                          height:
                                                              getSize(40.00),
                                                          width:
                                                              getSize(40.00)))),
                                              Container(
                                                  margin: getMargin(
                                                      left: 14,
                                                      top: 4,
                                                      bottom: 4),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_marlee_rice"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14
                                                                .copyWith()),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6,
                                                                right: 7),
                                                            child: Text(
                                                                "lbl_id_14345112075"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium10
                                                                    .copyWith()))
                                                      ]))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(285.00),
                                        margin: getMargin(
                                            left: 20, top: 23, right: 20),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200)),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 16, right: 20),
                                        child: Text("lbl_amount".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium12Black900
                                                .copyWith())),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 20, top: 15, right: 20),
                                            child: Text("lbl_02".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium30
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 27),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_available_balan2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray500,
                                                          fontSize:
                                                              getFontSize(10),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text: ' ',
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(10),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text: "lbl_3_230_00".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .indigoA100,
                                                          fontSize:
                                                              getFontSize(10),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500))
                                                ]),
                                                textAlign: TextAlign.left)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(229.00),
                              width: getHorizontalSize(327.00),
                              margin: getMargin(left: 24, top: 127, right: 24),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgElementGray201,
                                        height: getVerticalSize(229.00),
                                        width: getHorizontalSize(327.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(
                                            left: 40,
                                            top: 18,
                                            right: 40,
                                            bottom: 19),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 3),
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics:
                                                                  BouncingScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .transferAmountModelObj
                                                                  .value
                                                                  .listoneItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListoneItemModel
                                                                    model =
                                                                    controller
                                                                        .transferAmountModelObj
                                                                        .value
                                                                        .listoneItemList[index];
                                                                return ListoneItemWidget(
                                                                    model);
                                                              })))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10, top: 36),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text("lbl_0".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium20
                                                                .copyWith()),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 95,
                                                                top: 4,
                                                                bottom: 5),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleft10X16,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        16.00)))
                                                      ]))
                                            ])))
                              ]))),
                      CustomButton(
                          width: 327,
                          text: "lbl_send_money".tr,
                          margin: getMargin(
                              left: 24, top: 30, right: 24, bottom: 20),
                          shape: ButtonShape.RoundedBorder7,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
