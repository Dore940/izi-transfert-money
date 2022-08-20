import '../country_or_region_screen/widgets/listunitedkingdom_item_widget.dart';
import 'controller/country_or_region_controller.dart';
import 'models/listunitedkingdom_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_icon_button.dart';
import 'package:izi_transfert/widgets/custom_search_view.dart';

class CountryOrRegionScreen extends GetWidget<CountryOrRegionController> {
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
                      CustomIconButton(
                          height: 30,
                          width: 30,
                          margin: getMargin(left: 24, top: 10, right: 24),
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      CustomSearchView(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.searchbarController,
                          hintText: "msg_search_country".tr,
                          margin: getMargin(left: 24, top: 34, right: 24),
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
                          padding: getPadding(left: 25, top: 35, right: 25),
                          child: Text("msg_country_or_regi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18.copyWith())),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 16, right: 24, bottom: 55),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.countryOrRegionModelObj
                                      .value.listunitedkingdomItemList.length,
                                  itemBuilder: (context, index) {
                                    ListunitedkingdomItemModel model =
                                        controller.countryOrRegionModelObj.value
                                            .listunitedkingdomItemList[index];
                                    return ListunitedkingdomItemWidget(model);
                                  }))))
                    ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
