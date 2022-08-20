import '../send_money_screen/widgets/send_money_item_widget.dart';
import 'controller/send_money_controller.dart';
import 'models/send_money_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_drop_down.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class SendMoneyScreen extends GetWidget<SendMoneyController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 24, top: 7, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    padding: getPadding(top: 10, bottom: 4),
                                    child: Text("lbl_send_money2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold18
                                            .copyWith())),
                                CustomIconButton(
                                    height: 35,
                                    width: 35,
                                    shape: IconButtonShape.RoundedBorder17,
                                    padding: IconButtonPadding.PaddingAll8,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgMoreBlack900))
                              ])),
                      Container(
                          margin: getMargin(left: 24, top: 32, right: 24),
                          decoration: AppDecoration.outlineBlack90014.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 15, bottom: 15),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(25.00)),
                                              child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse311,
                                                  height: getSize(50.00),
                                                  width: getSize(50.00))),
                                          Container(
                                              margin: getMargin(
                                                  left: 14, top: 10, bottom: 6),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_alex_dordan".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium15Black900
                                                            .copyWith()),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 8, right: 10),
                                                        child: Text(
                                                            "lbl_web_developer"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium9
                                                                .copyWith()))
                                                  ]))
                                        ])),
                                CustomIconButton(
                                    height: 30,
                                    width: 30,
                                    margin: getMargin(
                                        top: 25, right: 16, bottom: 25),
                                    variant: IconButtonVariant.FillDeeppurple50,
                                    padding: IconButtonPadding.PaddingAll8,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgOffer))
                              ])),
                      Container(
                          margin: getMargin(left: 24, top: 16, right: 24),
                          decoration: AppDecoration.outlineBlack90014.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 15, top: 15, bottom: 15),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              variant: IconButtonVariant
                                                  .FillIndigoA100,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVolume1)),
                                          Container(
                                              margin: getMargin(
                                                  left: 15, top: 11, bottom: 7),
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
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_mastercard".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium15Black900
                                                                .copyWith())),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                102.00),
                                                        margin:
                                                            getMargin(top: 4),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              4),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .img1Gray500,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          21.00))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              4),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .img1Gray500,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          21.00))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              3),
                                                                  child: Text(
                                                                      "lbl_4023"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium8
                                                                          .copyWith())),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              3),
                                                                  child: Text(
                                                                      "lbl_5534"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium8
                                                                          .copyWith()))
                                                            ]))
                                                  ]))
                                        ])),
                                CustomIconButton(
                                    height: 30,
                                    width: 30,
                                    margin: getMargin(
                                        top: 25, right: 16, bottom: 25),
                                    variant: IconButtonVariant.FillBluegray50,
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgArrowdownGray902))
                              ])),
                      Container(
                          height: getVerticalSize(365.00),
                          width: getHorizontalSize(325.00),
                          margin: getMargin(left: 24, top: 40, right: 24),
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgElementGray201,
                                            height: getVerticalSize(229.00),
                                            width: getHorizontalSize(325.00)))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: getMargin(
                                            left: 43, right: 43, bottom: 10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: getMargin(top: 6),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 43,
                                                                right: 42),
                                                            child: Text(
                                                                "msg_enter_your_acco"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium16Bluegray400
                                                                    .copyWith())),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            28),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_1_500_00".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium30.copyWith())),
                                                                      CustomDropDown(
                                                                          width:
                                                                              70,
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(left: 10, right: 14),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgArrowdownGray500)),
                                                                          hintText: "lbl_usd".tr,
                                                                          margin: getMargin(bottom: 1),
                                                                          items: controller.sendMoneyModelObj.value.dropdownItemList,
                                                                          onChanged: (value) {
                                                                            controller.onSelected(value);
                                                                          })
                                                                    ])))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 3,
                                                          top: 61,
                                                          right: 2,
                                                          bottom: 5),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            3),
                                                                    child: Obx(() => ListView.builder(
                                                                        physics: BouncingScrollPhysics(),
                                                                        shrinkWrap: true,
                                                                        itemCount: controller.sendMoneyModelObj.value.sendMoneyItemList.length,
                                                                        itemBuilder: (context, index) {
                                                                          SendMoneyItemModel model = controller
                                                                              .sendMoneyModelObj
                                                                              .value
                                                                              .sendMoneyItemList[index];
                                                                          return SendMoneyItemWidget(
                                                                              model);
                                                                        })))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top:
                                                                            36),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_0"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsMedium20
                                                                              .copyWith()),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  95,
                                                                              top:
                                                                                  4,
                                                                              bottom:
                                                                                  5),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgArrowleft10X16,
                                                                              height: getVerticalSize(10.00),
                                                                              width: getHorizontalSize(16.00)))
                                                                    ]))
                                                          ])))
                                            ])))
                              ])),
                      CustomButton(
                          width: 327,
                          text: "lbl_send_money".tr,
                          margin: getMargin(
                              left: 24, top: 27, right: 24, bottom: 20),
                          shape: ButtonShape.RoundedBorder7)
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
