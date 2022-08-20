import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

class SettingsScreen extends GetWidget<SettingsController> {
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
                          margin: getMargin(left: 20, top: 7, right: 20),
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
                                    padding: getPadding(top: 9, bottom: 4),
                                    child: Text("lbl_settings".tr,
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
                          height: getVerticalSize(92.00),
                          width: getHorizontalSize(80.00),
                          margin: getMargin(left: 20, top: 32, right: 20),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getSize(80.00),
                                        width: getSize(80.00),
                                        margin: getMargin(bottom: 10),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      decoration: AppDecoration
                                                          .outlineGray200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder40),
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
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            80.00),
                                                                    width: getHorizontalSize(
                                                                        40.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            10),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .indigoA100,
                                                                        borderRadius: BorderRadius.only(
                                                                            topRight:
                                                                                Radius.circular(getHorizontalSize(38.00)),
                                                                            bottomRight: Radius.circular(getHorizontalSize(38.00))))))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(all: 5),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      35.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse314,
                                                              height: getSize(
                                                                  70.00),
                                                              width: getSize(
                                                                  70.00)))))
                                            ]))),
                                CustomIconButton(
                                    height: 25,
                                    width: 25,
                                    margin:
                                        getMargin(left: 27, top: 10, right: 27),
                                    variant: IconButtonVariant.FillIndigoA100,
                                    padding: IconButtonPadding.PaddingAll8,
                                    alignment: Alignment.bottomCenter,
                                    onTap: () {
                                      onTapBtntf1();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgCamera))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 12, right: 20),
                          child: Text("lbl_alex_dordan".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18.copyWith())),
                      Padding(
                          padding: getPadding(left: 20, top: 8, right: 20),
                          child: Text("lbl_web_developer".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10.copyWith())),
                      Container(
                          height: getVerticalSize(360.00),
                          width: getHorizontalSize(327.00),
                          margin: getMargin(left: 20, top: 50, right: 20),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10, top: 25, bottom: 25),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(8.00),
                                        width: getHorizontalSize(4.00)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                      Padding(
                                          padding: getPadding(right: 10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CustomIconButton(
                                                    height: 40,
                                                    width: 40,
                                                    variant: IconButtonVariant
                                                        .FillDeeppurple50,
                                                    shape: IconButtonShape
                                                        .RoundedBorder7,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgLock40X40)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 14,
                                                        bottom: 8),
                                                    child: Text(
                                                        "lbl_change_password"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium16Black900
                                                            .copyWith()))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant: IconButtonVariant
                                                              .FillDeeppurple50,
                                                          shape: IconButtonShape
                                                              .RoundedBorder7,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgSearchIndigoA100)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 11,
                                                              bottom: 12),
                                                          child: Text(
                                                              "lbl_notification"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium16Black900
                                                                  .copyWith()))
                                                    ]),
                                                Container(
                                                    margin: getMargin(
                                                        top: 13, bottom: 13),
                                                    decoration: AppDecoration
                                                        .fillIndigoA100
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder7),
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
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          6.00),
                                                                  width:
                                                                      getSize(
                                                                          6.00),
                                                                  margin: getMargin(
                                                                      left: 12,
                                                                      top: 4,
                                                                      right: 4,
                                                                      bottom:
                                                                          4),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .whiteA700,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(3.00)))))
                                                        ]))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant: IconButtonVariant
                                                              .FillDeeppurple50,
                                                          shape: IconButtonShape
                                                              .RoundedBorder7,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmark40X40)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 11,
                                                              bottom: 12),
                                                          child: Text(
                                                              "msg_refer_friends"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium16Black900
                                                                  .copyWith()))
                                                    ]),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 16, bottom: 16),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                4.00)))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant: IconButtonVariant
                                                              .FillDeeppurple50,
                                                          shape: IconButtonShape
                                                              .RoundedBorder7,
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgFile)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 13,
                                                              bottom: 8),
                                                          child: Text(
                                                              "msg_privacy_polic"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium16Black900
                                                                  .copyWith()))
                                                    ]),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 16, bottom: 16),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                4.00)))
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(325.00),
                                          margin: getMargin(
                                              left: 1, top: 20, right: 1),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray200)),
                                      Padding(
                                          padding: getPadding(top: 19),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant: IconButtonVariant
                                                              .FillDeeppurple50,
                                                          shape: IconButtonShape
                                                              .RoundedBorder7,
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSignal)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 13,
                                                              bottom: 10),
                                                          child: Text(
                                                              "lbl_faqs".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium16Black900
                                                                  .copyWith()))
                                                    ]),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 16, bottom: 16),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                4.00)))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant: IconButtonVariant
                                                              .FillDeeppurple50,
                                                          shape: IconButtonShape
                                                              .RoundedBorder7,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgClock40X40)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 11,
                                                              bottom: 12),
                                                          child: Text(
                                                              "msg_terms_conditi"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium16Black900
                                                                  .copyWith()))
                                                    ]),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 16, bottom: 16),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                            8.00),
                                                        width:
                                                            getHorizontalSize(
                                                                4.00)))
                                              ]))
                                    ])))
                          ])),
                      Container(
                          margin: getMargin(
                              left: 20, top: 40, right: 20, bottom: 52),
                          decoration: AppDecoration.fillIndigoA100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 18, bottom: 17),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgIcon15X15,
                                        height: getSize(15.00),
                                        width: getSize(15.00))),
                                Padding(
                                    padding: getPadding(
                                        left: 14, top: 19, bottom: 13),
                                    child: Text("lbl_log_out".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold16
                                            .copyWith()))
                              ]))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtntf1() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
