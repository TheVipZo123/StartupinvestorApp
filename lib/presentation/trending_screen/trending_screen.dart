import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_image.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/custom_app_bar.dart';

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 53,
                leading: AppbarImage(
                    height: getSize(26),
                    width: getSize(26),
                    svgPath: ImageConstant.imgCamera,
                    margin: getMargin(left: 27, top: 25, bottom: 5)),
                title: AppbarSubtitle(
                    text: "vip",
                    margin: getMargin(left: 6, top: 32, bottom: 8)),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgArrowright,
                      margin:
                          getMargin(left: 12, top: 5, right: 12, bottom: 31),
                      onTap: () {
                        onTapArrowright3(context);
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 11),
                    child: Container(
                        margin: getMargin(left: 22, right: 22),
                        padding: getPadding(
                            left: 18, top: 17, right: 18, bottom: 17),
                        decoration: AppDecoration.fillGray50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("INVESTIMENTO".toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(1.0)))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 7),
                                      child: Text("Trending",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold26))),
                              GestureDetector(
                                  onTap: () {
                                    onTapBubblechat(context);
                                  },
                                  child: Container(
                                      margin: getMargin(top: 20, right: 16),
                                      decoration: AppDecoration.blue.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 11,
                                                    bottom: 10),
                                                child: Text("Nubank",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage1,
                                                height: getVerticalSize(39),
                                                width: getHorizontalSize(42),
                                                margin: getMargin(left: 79))
                                          ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapBubblechat1(context);
                                  },
                                  child: Container(
                                      margin: getMargin(top: 11, right: 13),
                                      decoration: AppDecoration.blue.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 11,
                                                    bottom: 10),
                                                child: Text("QuintoAndar",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Gray50)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage2,
                                                height: getVerticalSize(39),
                                                width: getHorizontalSize(45),
                                                margin: getMargin(left: 49))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 50, top: 12, right: 13),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgEllipse1,
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(24),
                                            margin:
                                                getMargin(top: 32, bottom: 1)),
                                        Expanded(
                                            child: Container(
                                                margin: getMargin(left: 24),
                                                decoration: AppDecoration.blue
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11,
                                                              bottom: 10),
                                                          child: Text("Cobli",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14Gray50)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage3,
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  45),
                                                          margin: getMargin(
                                                              left: 96))
                                                    ])))
                                      ])),
                              Container(
                                  height: getVerticalSize(39),
                                  width: getHorizontalSize(184),
                                  margin: getMargin(top: 12, right: 13),
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(right: 3),
                                                padding: getPadding(all: 10),
                                                decoration: AppDecoration.blue
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL14),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Movile",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14)
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgMovile1,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(45),
                                            alignment: Alignment.centerRight)
                                      ])),
                              Container(
                                  margin: getMargin(top: 11, right: 13),
                                  decoration: AppDecoration.blue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 11, bottom: 10),
                                            child: Text("BirminD",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Gray50)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage6,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(45),
                                            margin: getMargin(left: 79))
                                      ])),
                              Container(
                                  margin: getMargin(top: 12, right: 13),
                                  decoration: AppDecoration.blue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, bottom: 9),
                                            child: Text("GoEpik",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Gray50)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGoepik1,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            margin: getMargin(left: 85))
                                      ])),
                              Container(
                                  height: getVerticalSize(39),
                                  width: getHorizontalSize(184),
                                  margin: getMargin(top: 12, right: 13),
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(right: 3),
                                                padding: getPadding(all: 10),
                                                decoration: AppDecoration.blue
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL14),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text("Ambar",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage8,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            alignment: Alignment.centerRight)
                                      ])),
                              Container(
                                  margin: getMargin(top: 11, right: 13),
                                  decoration: AppDecoration.blue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, bottom: 9),
                                            child: Text("Monkey Exchange ",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Gray50)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage9,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            margin: getMargin(left: 15))
                                      ])),
                              Container(
                                  margin: getMargin(top: 12, right: 13),
                                  decoration: AppDecoration.blue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 11, bottom: 10),
                                            child: Text("OlhoDoDono",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Gray50)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage10,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            margin: getMargin(left: 49))
                                      ])),
                              Container(
                                  height: getVerticalSize(39),
                                  width: getHorizontalSize(184),
                                  margin: getMargin(top: 12, right: 13),
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(right: 3),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 9,
                                                    right: 10,
                                                    bottom: 9),
                                                decoration: AppDecoration.blue
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL14),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3),
                                                          child: Text("FindUp",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage11,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            alignment: Alignment.centerRight)
                                      ])),
                              Container(
                                  margin: getMargin(top: 11, right: 13),
                                  decoration: AppDecoration.blue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 12, bottom: 9),
                                            child: Text("LinkApi",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Gray50)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage12,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            margin: getMargin(left: 84))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(top: 12, right: 13, bottom: 32),
                                  decoration: AppDecoration.blue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 11, bottom: 10),
                                            child: Text("Leadster",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14Gray50)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage13,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(43),
                                            margin: getMargin(left: 74))
                                      ]))
                            ]))))));
  }

  onTapBubblechat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.empresaScreen);
  }

  onTapBubblechat1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.empresaTwoScreen);
  }

  onTapArrowright3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
