import '../onboarding_one_screen/widgets/slidergroupseventysix_item_widget.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/slidergroupseventysix_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
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
                      margin: getMargin(
                        left: 22,
                        top: 30,
                        right: 22,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 8,
                              bottom: 9,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgCar,
                              height: getVerticalSize(
                                32.00,
                              ),
                              width: getHorizontalSize(
                                37.00,
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 2,
                              bottom: 2,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_paybank".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtProximaNovaABold28IndigoA100
                                      .copyWith(
                                    letterSpacing: 1.82,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 5,
                                      right: 3,
                                    ),
                                    child: Text(
                                      "msg_we_serve_with_f".tr.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium10Black900
                                          .copyWith(
                                        letterSpacing: 1.60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 22,
                      top: 58,
                      right: 22,
                    ),
                    child: Obx(
                      () => CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(
                            471.00,
                          ),
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.silderIndex.value = index;
                          },
                        ),
                        itemCount: controller.onboardingOneModelObj.value
                            .slidergroupseventysixItemList.length,
                        itemBuilder: (context, index, realIndex) {
                          SlidergroupseventysixItemModel model = controller
                              .onboardingOneModelObj
                              .value
                              .slidergroupseventysixItemList[index];
                          return SlidergroupseventysixItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Container(
                      height: getVerticalSize(
                        7.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 29,
                        right: 24,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.silderIndex.value,
                        count: controller.onboardingOneModelObj.value
                            .slidergroupseventysixItemList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 15,
                          activeDotColor: ColorConstant.fromHex("#1212121D"),
                          dotColor: ColorConstant.bluegray100,
                          dotHeight: getVerticalSize(
                            7.00,
                          ),
                          dotWidth: getHorizontalSize(
                            7.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 150,
                    text: "lbl_get_started".tr,
                    margin: getMargin(
                      left: 24,
                      top: 30,
                      right: 24,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.FillGray901,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
