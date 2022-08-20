import 'controller/map_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MapLocationBottomsheet extends StatelessWidget {
  MapLocationBottomsheet(this.controller);

  MapLocationController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL40),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: getVerticalSize(4.00),
                                width: getHorizontalSize(30.00),
                                margin: getMargin(left: 24, top: 9, right: 24),
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray203,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(2.00))))),
                        Padding(
                            padding: getPadding(left: 24, top: 27, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                      height: 50,
                                      width: 50,
                                      margin: getMargin(bottom: 2),
                                      variant: IconButtonVariant.FillTeal80026,
                                      onTap: () {
                                        onTapBtntf();
                                      },
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgFolder)),
                                  Container(
                                      margin: getMargin(left: 14, top: 1),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(right: 10),
                                                child: Text(
                                                    "lbl_national_bank".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium14
                                                        .copyWith())),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    width: getHorizontalSize(
                                                        118.00),
                                                    margin: getMargin(
                                                        left: 1, top: 12),
                                                    child: Text(
                                                        "msg_24084_standard".tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium9Bluegray400
                                                            .copyWith())))
                                          ]))
                                ])),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(327.00),
                            margin: getMargin(left: 24, top: 19, right: 24),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray200)),
                        Padding(
                            padding: getPadding(left: 24, top: 19, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 3),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgClock15X15,
                                          height: getSize(15.00),
                                          width: getSize(15.00))),
                                  Padding(
                                      padding: getPadding(left: 12, top: 1),
                                      child: Text("lbl_working_hours".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14
                                              .copyWith()))
                                ])),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: getMargin(left: 24, top: 18, right: 24),
                                decoration: AppDecoration.outlineBlack9000c
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder7),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 18, top: 17, bottom: 17),
                                          child: Text("lbl_s".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium15
                                                  .copyWith())),
                                      Container(
                                          height: getVerticalSize(30.00),
                                          width: getHorizontalSize(235.00),
                                          margin: getMargin(
                                              left: 18, top: 10, bottom: 10),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            top: 8, bottom: 7),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgElementGray300,
                                                            height:
                                                                getVerticalSize(
                                                                    15.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    235.00)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 17,
                                                            right: 19),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              7),
                                                                  child: Text(
                                                                      "lbl_m"
                                                                          .tr,
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
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              35,
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              7),
                                                                  child: Text(
                                                                      "lbl_t"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium15
                                                                          .copyWith())),
                                                              CustomButton(
                                                                  width: 46,
                                                                  text: "lbl_w"
                                                                      .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              20),
                                                                  shape: ButtonShape
                                                                      .RoundedBorder7,
                                                                  padding:
                                                                      ButtonPadding
                                                                          .PaddingAll7,
                                                                  fontStyle:
                                                                      ButtonFontStyle
                                                                          .PoppinsMedium15),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              20,
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              7),
                                                                  child: Text(
                                                                      "lbl_t"
                                                                          .tr,
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
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              38,
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_f"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium14Gray500
                                                                          .copyWith()))
                                                            ])))
                                              ])),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 17, bottom: 18),
                                          child: Text("lbl_s".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium14Gray500
                                                  .copyWith()))
                                    ]))),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(327.00),
                            margin: getMargin(left: 24, top: 21, right: 24),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray200)),
                        Padding(
                            padding: getPadding(left: 24, top: 17, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgVectorIndigoA10015X15,
                                          height: getSize(15.00),
                                          width: getSize(15.00))),
                                  Padding(
                                      padding: getPadding(left: 14, bottom: 1),
                                      child: Text("lbl_phone_number".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14
                                              .copyWith()))
                                ])),
                        Padding(
                            padding: getPadding(left: 24, top: 8, right: 24),
                            child: Text("msg_1_202_555_0109".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium11Gray500
                                    .copyWith())),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(327.00),
                            margin: getMargin(left: 24, top: 19, right: 24),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray200)),
                        Padding(
                            padding: getPadding(left: 24, top: 17, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgDownload15X18,
                                          height: getVerticalSize(15.00),
                                          width: getHorizontalSize(18.00))),
                                  Padding(
                                      padding: getPadding(left: 12, bottom: 1),
                                      child: Text("lbl_email_address".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14
                                              .copyWith()))
                                ])),
                        Padding(
                            padding: getPadding(left: 24, top: 9, right: 24),
                            child: Text("msg_primelementbank".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium11Gray500
                                    .copyWith())),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(327.00),
                            margin: getMargin(left: 24, top: 16, right: 24),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray200)),
                        Padding(
                            padding: getPadding(left: 25, top: 23, right: 25),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgMegaphone,
                                          height: getVerticalSize(15.00),
                                          width: getHorizontalSize(13.00))),
                                  Padding(
                                      padding: getPadding(left: 12, bottom: 1),
                                      child: Text("lbl_attendance".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14
                                              .copyWith()))
                                ])),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(
                                    left: 24, top: 17, right: 24, bottom: 50),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                            Text("lbl_100".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterMedium11
                                                    .copyWith()),
                                            Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 27,
                                                    right: 10),
                                                child: Text("lbl_50".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium11
                                                        .copyWith())),
                                            Padding(
                                                padding: getPadding(
                                                    top: 25, right: 10),
                                                child: Text("lbl_0".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium11
                                                        .copyWith()))
                                          ])),
                                      Container(
                                          height: getVerticalSize(78.00),
                                          width: getHorizontalSize(296.00),
                                          margin: getMargin(
                                              left: 7, top: 7, bottom: 5),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      296.00),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray301)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      296.00),
                                                              margin: getMargin(
                                                                  top: 39),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray301)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      296.00),
                                                              margin: getMargin(
                                                                  top: 36),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray301))
                                                        ]))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 2,
                                                            right: 11,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgGroup75X272,
                                                            height:
                                                                getVerticalSize(
                                                                    75.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    272.00))))
                                              ]))
                                    ])))
                      ])))
        ])));
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
//TODO: use permission for using selected files
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }
}
