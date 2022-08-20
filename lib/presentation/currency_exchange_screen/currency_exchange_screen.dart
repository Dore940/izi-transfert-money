import 'controller/currency_exchange_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_drop_down.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:izi_transfert/widgets/custom_text_form_field.dart';

class CurrencyExchangeScreen extends GetWidget<CurrencyExchangeController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                        padding: getPadding(top: 10, bottom: 4),
                                        child: Text("msg_currency_exchan".tr,
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
                                            svgPath:
                                                ImageConstant.imgMoreBlack900))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 32, right: 24),
                              decoration: AppDecoration.outlineBlack9001112
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 30, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgComputer15X23,
                                                        height: getVerticalSize(
                                                            23.00),
                                                        width:
                                                            getHorizontalSize(
                                                                36.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 10,
                                                            bottom: 9),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .img1,
                                                            height:
                                                                getVerticalSize(
                                                                    4.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    32.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 10,
                                                            bottom: 9),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .img1,
                                                            height:
                                                                getVerticalSize(
                                                                    4.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    32.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 6,
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_4023".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10Bluegray400
                                                                .copyWith())),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 6,
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_5534".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10Bluegray400
                                                                .copyWith()))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 10, bottom: 9),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray902,
                                                      height:
                                                          getVerticalSize(4.00),
                                                      width: getHorizontalSize(
                                                          8.00)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(285.00),
                                        margin: getMargin(
                                            left: 20, top: 21, right: 20),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.indigoA100)),
                                    Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 19,
                                            right: 20,
                                            bottom: 30),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomTextFormField(
                                                  width: 140,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .priceController,
                                                  hintText: "lbl_1_200_00".tr,
                                                  variant: TextFormFieldVariant
                                                      .OutlineIndigoA100,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll9,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsMedium11),
                                              CustomDropDown(
                                                  width: 70,
                                                  focusNode: FocusNode(),
                                                  icon: Container(
                                                      margin: getMargin(
                                                          left: 10, right: 14),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray500)),
                                                  hintText: "lbl_usd".tr,
                                                  variant: DropDownVariant
                                                      .FillGray50,
                                                  items: controller
                                                      .currencyExchangeModelObj
                                                      .value
                                                      .dropdownItemList,
                                                  onChanged: (value) {
                                                    controller
                                                        .onSelected(value);
                                                  })
                                            ]))
                                  ]))),
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          margin: getMargin(left: 153, top: 24, right: 153),
                          variant: IconButtonVariant.FillDeeppurple50,
                          shape: IconButtonShape.CircleBorder25,
                          padding: IconButtonPadding.PaddingAll16,
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowupIndigoA100)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 24, right: 24),
                              decoration: AppDecoration.outlineBlack9001112
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 21, top: 34, right: 21),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorIndigoA100,
                                                        height: getVerticalSize(
                                                            15.00),
                                                        width:
                                                            getHorizontalSize(
                                                                47.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 6,
                                                            bottom: 5),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .img1,
                                                            height:
                                                                getVerticalSize(
                                                                    4.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    32.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 6,
                                                            bottom: 5),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .img1,
                                                            height:
                                                                getVerticalSize(
                                                                    4.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    32.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 2,
                                                            bottom: 2),
                                                        child: Text(
                                                            "lbl_4023".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10Bluegray400
                                                                .copyWith())),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 2,
                                                            bottom: 2),
                                                        child: Text(
                                                            "lbl_5534".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium10Bluegray400
                                                                .copyWith()))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 6, bottom: 5),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray902,
                                                      height:
                                                          getVerticalSize(4.00),
                                                      width: getHorizontalSize(
                                                          8.00)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(285.00),
                                        margin: getMargin(
                                            left: 21, top: 25, right: 21),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.indigoA100)),
                                    Padding(
                                        padding: getPadding(
                                            left: 21,
                                            top: 19,
                                            right: 21,
                                            bottom: 30),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomTextFormField(
                                                  width: 140,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .priceTwoController,
                                                  hintText: "lbl_1_500_00".tr,
                                                  variant: TextFormFieldVariant
                                                      .OutlineIndigoA100,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll9,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsMedium11,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              CustomDropDown(
                                                  width: 70,
                                                  focusNode: FocusNode(),
                                                  icon: Container(
                                                      margin: getMargin(
                                                          left: 10, right: 14),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray500)),
                                                  hintText: "lbl_usd".tr,
                                                  variant: DropDownVariant
                                                      .FillGray50,
                                                  items: controller
                                                      .currencyExchangeModelObj
                                                      .value
                                                      .dropdownItemList1,
                                                  onChanged: (value) {
                                                    controller
                                                        .onSelected1(value);
                                                  })
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 28, right: 24),
                          child: Text("lbl_comment".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 17, right: 24),
                              decoration: AppDecoration.outlineGray20012
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder11),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 15,
                                                top: 20,
                                                right: 15,
                                                bottom: 87),
                                            child: Text(
                                                "msg_enter_your_comm".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular11
                                                    .copyWith())))
                                  ]))),
                      CustomButton(
                          width: 327,
                          text: "lbl_transfer_money".tr,
                          margin: getMargin(
                              left: 24, top: 22, right: 24, bottom: 20),
                          shape: ButtonShape.RoundedBorder7,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
