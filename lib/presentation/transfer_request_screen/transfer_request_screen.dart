import '../transfer_request_screen/widgets/listrectanglesixtythree_item_widget.dart';
import 'controller/transfer_request_controller.dart';
import 'models/listrectanglesixtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:izi_transfert/widgets/custom_search_view.dart';
import 'package:izi_transfert/widgets/custom_text_form_field.dart';

class TransferRequestScreen extends GetWidget<TransferRequestController> {
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
                                                .imgSearchBlack900))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 32, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextFormField(
                                        width: 125,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.transferController1,
                                        hintText: "lbl_transfer".tr,
                                        variant: TextFormFieldVariant
                                            .FillDeeppurple300,
                                        padding:
                                            TextFormFieldPadding.PaddingTB13,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsMedium14,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 17,
                                                top: 14,
                                                right: 9,
                                                bottom: 12),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleft)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(14.00),
                                            minHeight: getSize(14.00))),
                                    CustomTextFormField(
                                        width: 125,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.requestController1,
                                        hintText: "lbl_request".tr,
                                        margin: getMargin(left: 18),
                                        variant:
                                            TextFormFieldVariant.FillTeal300,
                                        padding:
                                            TextFormFieldPadding.PaddingT15,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsMedium14,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 14,
                                                right: 9,
                                                bottom: 12),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(14.00),
                                            minHeight: getSize(14.00))),
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(left: 19),
                                        variant: IconButtonVariant.FillGray50,
                                        shape: IconButtonShape.RoundedBorder7,
                                        padding: IconButtonPadding.PaddingAll8,
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgMore))
                                  ]))),
                      CustomSearchView(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.searchbarController,
                          hintText: "msg_search_people".tr,
                          margin: getMargin(left: 24, top: 20, right: 24),
                          variant: SearchViewVariant.OutlineGray200,
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
                          padding: getPadding(left: 24, top: 30, right: 24),
                          child: Text("lbl_contact_people".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16Black900
                                  .copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 16, right: 24, bottom: 8),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .transferRequestModelObj
                                      .value
                                      .listrectanglesixtythreeItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListrectanglesixtythreeItemModel model =
                                        controller.transferRequestModelObj.value
                                                .listrectanglesixtythreeItemList[
                                            index];
                                    return ListrectanglesixtythreeItemWidget(
                                        model);
                                  }))))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
