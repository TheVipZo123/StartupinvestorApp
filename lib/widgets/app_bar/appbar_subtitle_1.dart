import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle1 extends StatelessWidget {
  AppbarSubtitle1({
    required this.text,
    this.margin,
    this.onTap,
  });

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterSemiBold12BlueA200.copyWith(
            color: ColorConstant.blueA200,
          ),
        ),
      ),
    );
  }
}
