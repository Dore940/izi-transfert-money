import 'package:flutter/material.dart';
import 'package:izi_transfert/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillDeeppurple50:
        return ColorConstant.deepPurple50;
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case IconButtonVariant.FillRedA70026:
        return ColorConstant.redA70026;
      case IconButtonVariant.FillGreenA70026:
        return ColorConstant.greenA70026;
      case IconButtonVariant.FillPink40026:
        return ColorConstant.pink40026;
      case IconButtonVariant.FillBlueA70026:
        return ColorConstant.blueA70026;
      case IconButtonVariant.FillLightblue80026:
        return ColorConstant.lightBlue80026;
      case IconButtonVariant.FillAmber60026:
        return ColorConstant.amber60026;
      case IconButtonVariant.FillLightblue50026:
        return ColorConstant.lightBlue50026;
      case IconButtonVariant.FillGray40026:
        return ColorConstant.gray40026;
      case IconButtonVariant.FillTeal80026:
        return ColorConstant.teal80026;
      case IconButtonVariant.FillIndigoA100:
        return ColorConstant.indigoA100;
      case IconButtonVariant.FillBluegray50:
        return ColorConstant.bluegray50;
      case IconButtonVariant.OutlineBluegray100:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.FillDeeppurple50:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillRedA70026:
      case IconButtonVariant.FillGreenA70026:
      case IconButtonVariant.FillPink40026:
      case IconButtonVariant.FillBlueA70026:
      case IconButtonVariant.FillLightblue80026:
      case IconButtonVariant.FillAmber60026:
      case IconButtonVariant.FillLightblue50026:
      case IconButtonVariant.FillGray40026:
      case IconButtonVariant.FillTeal80026:
      case IconButtonVariant.FillIndigoA100:
      case IconButtonVariant.FillBluegray50:
        return null;
      default:
        return Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      case IconButtonShape.RoundedBorder17:
        return BorderRadius.circular(
          getHorizontalSize(
            17.50,
          ),
        );
      case IconButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder7,
  RoundedBorder13,
  RoundedBorder17,
  CircleBorder25,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll13,
  PaddingAll20,
  PaddingAll16,
}

enum IconButtonVariant {
  FillDeeppurple50,
  FillGray50,
  FillGray100,
  FillRedA70026,
  FillGreenA70026,
  FillPink40026,
  FillBlueA70026,
  FillLightblue80026,
  OutlineBluegray100,
  FillAmber60026,
  FillLightblue50026,
  FillGray40026,
  FillTeal80026,
  FillIndigoA100,
  FillBluegray50,
}
