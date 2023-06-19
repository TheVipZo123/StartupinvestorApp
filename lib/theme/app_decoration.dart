import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get blue => BoxDecoration(
        color: ColorConstant.blueA200,
      );
  static BoxDecoration get txtOutlineBlack900 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientBlueA200Blue800 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blueA200,
            ColorConstant.blue800,
          ],
        ),
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get txtFillGray5001 => BoxDecoration(
        color: ColorConstant.gray5001,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: ColorConstant.gray5001,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius customBorderTL14 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        14,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        4,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        4,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        14,
      ),
    ),
  );

  static BorderRadius customBorderTL141 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        14,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        14,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
