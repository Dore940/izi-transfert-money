import 'controller/transfer_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_floating_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class TransferScreen extends GetWidget<TransferController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(768.00),
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomFloatingButton(
                                  height: 70,
                                  width: 70,
                                  margin: getMargin(
                                      left: 151,
                                      top: 20,
                                      right: 151,
                                      bottom: 20),
                                  variant:
                                      FloatingButtonVariant.OutlineBlueA70066,
                                  shape: FloatingButtonShape.CircleBorder35,
                                  alignment: Alignment.bottomCenter,
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgIconWhiteA700,
                                      height: getVerticalSize(35.00),
                                      width: getHorizontalSize(35.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    width: size.width,
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 7,
                                                        right: 24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 35,
                                                              width: 35,
                                                              shape: IconButtonShape
                                                                  .RoundedBorder17,
                                                              onTap: () {
                                                                onTapBtntf();
                                                              },
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleftBlack900)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8,
                                                                      bottom:
                                                                          8),
                                                              child: Text(
                                                                  "lbl_transfer"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold18
                                                                      .copyWith())),
                                                          CustomIconButton(
                                                              height: 35,
                                                              width: 35,
                                                              shape: IconButtonShape
                                                                  .RoundedBorder17,
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSearchBlack900))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    padding:
                                                        getPadding(top: 38),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            135.00),
                                                        width:
                                                            getHorizontalSize(
                                                                406.00),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  40,
                                                                              right:
                                                                                  40),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 9, right: 21), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(40.00)), child: CommonImageView(imagePath: ImageConstant.imgEllipse313, height: getSize(80.00), width: getSize(80.00))))),
                                                                                Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 17), child: Text("lbl_alex_dordan".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium18.copyWith()))),
                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 16, top: 8, right: 16), child: Text("lbl_web_developer".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium10.copyWith())))
                                                                              ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  7,
                                                                              bottom:
                                                                                  10),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                  Padding(padding: getPadding(top: 8, bottom: 7), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(25.00)), child: CommonImageView(imagePath: ImageConstant.imgEllipse309, height: getSize(50.00), width: getSize(50.00)))),
                                                                                  Padding(padding: getPadding(left: 24), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(32.50)), child: CommonImageView(imagePath: ImageConstant.imgEllipse310, height: getSize(65.00), width: getSize(65.00))))
                                                                                ]),
                                                                                Padding(
                                                                                    padding: getPadding(left: 128),
                                                                                    child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                      ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(32.50)), child: CommonImageView(imagePath: ImageConstant.imgEllipse312, height: getSize(65.00), width: getSize(65.00))),
                                                                                      Padding(padding: getPadding(left: 24, top: 8, bottom: 7), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(25.00)), child: CommonImageView(imagePath: ImageConstant.imgEllipse31150X50, height: getSize(50.00), width: getSize(50.00))))
                                                                                    ]))
                                                                              ])))
                                                            ])))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(139.00),
                                                    width: getHorizontalSize(
                                                        325.00),
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 30,
                                                        right: 24),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgBg,
                                                                  height:
                                                                      getVerticalSize(
                                                                          139.00),
                                                                  width: getHorizontalSize(
                                                                      325.00))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 44,
                                                                      top: 49,
                                                                      right: 44,
                                                                      bottom:
                                                                          49),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgVolume1,
                                                                            height: getVerticalSize(23.00),
                                                                            width: getHorizontalSize(36.00)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 19,
                                                                                top: 10,
                                                                                bottom: 9),
                                                                            child: CommonImageView(svgPath: ImageConstant.img1WhiteA700, height: getVerticalSize(4.00), width: getHorizontalSize(32.00))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 10,
                                                                                top: 10,
                                                                                bottom: 9),
                                                                            child: Container(width: getHorizontalSize(32.00), height: getVerticalSize(4.00), child: Obx(() => PinCodeTextField(appContext: context, controller: controller.otpController.value, length: 4, obscureText: false, obscuringCharacter: '*', keyboardType: TextInputType.number, autoDismissKeyboard: true, enableActiveFill: true, inputFormatters: [FilteringTextInputFormatter.digitsOnly], onChanged: (value) {}, pinTheme: PinTheme(fieldWidth: getHorizontalSize(4.00), shape: PinCodeFieldShape.underline, selectedFillColor: ColorConstant.whiteA700, activeFillColor: ColorConstant.whiteA700, inactiveFillColor: ColorConstant.whiteA700, inactiveColor: ColorConstant.fromHex("#1212121D"), selectedColor: ColorConstant.fromHex("#1212121D"), activeColor: ColorConstant.fromHex("#1212121D")))))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 10,
                                                                                top: 6,
                                                                                bottom: 6),
                                                                            child: Text("lbl_4023".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium10WhiteA700.copyWith())),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 8,
                                                                                top: 6,
                                                                                bottom: 6),
                                                                            child: Text("lbl_5534".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium10WhiteA700.copyWith()))
                                                                      ])))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 50,
                                                        right: 24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              padding: getPadding(
                                                                  left: 17,
                                                                  top: 9,
                                                                  right: 18,
                                                                  bottom: 7),
                                                              decoration: AppDecoration
                                                                  .txtOutlineGray300
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder7),
                                                              child: Text(
                                                                  "lbl_eur".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium13
                                                                      .copyWith())),
                                                          Container(
                                                              margin:
                                                                  getMargin(
                                                                      left: 15),
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 8,
                                                                      right: 17,
                                                                      bottom:
                                                                          8),
                                                              decoration: AppDecoration
                                                                  .txtOutlineBlue7005b
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder7),
                                                              child: Text(
                                                                  "lbl_usd".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium13WhiteA700
                                                                      .copyWith())),
                                                          Container(
                                                              margin:
                                                                  getMargin(
                                                                      left: 15),
                                                              padding:
                                                                  getPadding(
                                                                      left: 17,
                                                                      top: 8,
                                                                      right: 17,
                                                                      bottom:
                                                                          8),
                                                              decoration: AppDecoration
                                                                  .txtOutlineGray300
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder7),
                                                              child: Text(
                                                                  "lbl_gbp".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium13
                                                                      .copyWith()))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 24,
                                                        top: 40,
                                                        right: 24,
                                                        bottom: 213),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 11,
                                                                      bottom:
                                                                          8),
                                                              child: Text(
                                                                  "lbl_1_500_00"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium30
                                                                      .copyWith())),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 28),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCount,
                                                                  height:
                                                                      getVerticalSize(
                                                                          50.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          25.00)))
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
