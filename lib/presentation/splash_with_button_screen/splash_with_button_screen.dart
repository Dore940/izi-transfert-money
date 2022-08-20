import 'controller/splash_with_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';
import 'package:izi_transfert/widgets/custom_button.dart';

class SplashWithButtonScreen extends GetWidget<SplashWithButtonController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(
                    0.5,
                    -3.0616171314629196e-17,
                  ),
                  end: Alignment(
                    0.5,
                    0.9999999999999999,
                  ),
                  colors: [
                    ColorConstant.indigoA200,
                    ColorConstant.gray900,
                  ],
                ),
              ),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 25,
                        top: 184,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 5,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVideocamera,
                              height: getVerticalSize(
                                43.00,
                              ),
                              width: getHorizontalSize(
                                50.00,
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 19,
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
                                  style:
                                      AppStyle.txtProximaNovaABold28.copyWith(
                                    letterSpacing: 1.82,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 9,
                                      right: 3,
                                    ),
                                    child: Text(
                                      "msg_we_serve_with_f".tr.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium10Bluegray50
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
                    CustomButton(
                      width: 325,
                      text: "lbl_log_in2".tr,
                      margin: getMargin(
                        left: 25,
                        top: 376,
                        right: 25,
                      ),
                      variant: ButtonVariant.FillWhiteA700,
                      fontStyle: ButtonFontStyle.PoppinsSemiBold16IndigoA100,
                    ),
                    CustomButton(
                      width: 325,
                      text: "lbl_sign_up".tr,
                      margin: getMargin(
                        left: 25,
                        top: 15,
                        right: 25,
                        bottom: 20,
                      ),
                      variant: ButtonVariant.OutlineWhiteA700,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
