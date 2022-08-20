import 'controller/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:izi_transfert/widgets/custom_drop_down.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:izi_transfert/widgets/custom_search_view.dart';
import 'package:izi_transfert/widgets/custom_text_form_field.dart';

class AddressScreen extends GetWidget<AddressController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      CustomIconButton(
                          height: 30,
                          width: 30,
                          margin: getMargin(left: 24, top: 10, right: 24),
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      Padding(
                          padding: getPadding(left: 25, top: 57, right: 25),
                          child: Text("msg_address_informa".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20.copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(326.00),
                              margin: getMargin(left: 24, top: 17, right: 24),
                              child: Text("msg_by_law_we_need".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular14Bluegray400
                                      .copyWith()))),
                      CustomSearchView(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.searchbarController,
                          hintText: "msg_search_address".tr,
                          margin: getMargin(left: 24, top: 24, right: 24),
                          padding: SearchViewPadding.PaddingTB18,
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 18, right: 15, bottom: 17),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgSearchGray500)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(15.00),
                              minHeight: getSize(15.00))),
                      Padding(
                          padding: getPadding(left: 24, top: 35, right: 24),
                          child: Text("lbl_biling_details".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16Black900
                                  .copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 16, right: 24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.houseflatnoController,
                                        hintText: "lbl_house_flat_no".tr,
                                        variant: TextFormFieldVariant
                                            .OutlineBluegray100,
                                        shape:
                                            TextFormFieldShape.RoundedBorder13),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.streetaddressController,
                                        hintText: "lbl_street_address".tr,
                                        margin: getMargin(top: 15),
                                        variant: TextFormFieldVariant
                                            .OutlineBluegray100,
                                        shape:
                                            TextFormFieldShape.RoundedBorder13),
                                    Padding(
                                        padding: getPadding(top: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomTextFormField(
                                                  width: 155,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .postcodeController,
                                                  hintText: "lbl_post_code".tr,
                                                  variant: TextFormFieldVariant
                                                      .OutlineBluegray100,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder13,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              CustomTextFormField(
                                                  width: 156,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .stateController,
                                                  hintText: "lbl_state".tr,
                                                  variant: TextFormFieldVariant
                                                      .OutlineBluegray100,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder13,
                                                  padding: TextFormFieldPadding
                                                      .PaddingT18)
                                            ])),
                                    CustomDropDown(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 24),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftBlack900)),
                                        hintText: "lbl_country_region".tr,
                                        margin: getMargin(top: 15),
                                        variant:
                                            DropDownVariant.OutlineBluegray100,
                                        shape: DropDownShape.RoundedBorder13,
                                        padding: DropDownPadding.PaddingT15,
                                        fontStyle:
                                            DropDownFontStyle.PoppinsRegular14,
                                        items: controller.addressModelObj.value
                                            .dropdownItemList,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        })
                                  ]))),
                      CustomButton(
                          width: 327,
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 24, top: 30, right: 24, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
