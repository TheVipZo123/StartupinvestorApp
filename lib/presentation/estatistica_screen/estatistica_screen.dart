import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_iconbutton.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_image.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_button.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_icon_button.dart';

class EstatisticaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(77),
                leadingWidth: 53,
                leading: AppbarImage(
                    height: getSize(26),
                    width: getSize(26),
                    svgPath: ImageConstant.imgCamera,
                    margin: getMargin(left: 27, top: 15, bottom: 15)),
                title: AppbarSubtitle(text: "vip", margin: getMargin(left: 5)),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgArrowright,
                      margin:
                          getMargin(left: 25, top: 15, right: 25, bottom: 17),
                      onTap: () {
                        onTapArrowright6(context);
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: getMargin(left: 22, right: 22),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 4),
                                        child: Text("Hoje".toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular10
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.0)))),
                                    Padding(
                                        padding: getPadding(left: 4, top: 4),
                                        child: Text("Investimento ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterSemiBold26)),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 20),
                                            padding:
                                                getPadding(left: 15, right: 15),
                                            decoration: AppDecoration
                                                .fillGray5001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 14,
                                                          right: 1),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text("Portfolio",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold18),
                                                            Spacer(),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "Ultima Semana",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12BlueA200)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon1BlueA200,
                                                                height:
                                                                    getVerticalSize(
                                                                        4),
                                                                width:
                                                                    getHorizontalSize(
                                                                        8),
                                                                margin:
                                                                    getMargin(
                                                                        left: 6,
                                                                        top: 11,
                                                                        bottom:
                                                                            5))
                                                          ])),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(30),
                                                      width:
                                                          getHorizontalSize(74),
                                                      text: "3,720",
                                                      margin: getMargin(
                                                          left: 88, top: 49),
                                                      variant:
                                                          ButtonVariant.Black,
                                                      shape: ButtonShape
                                                          .RoundedBorder6,
                                                      padding: ButtonPadding
                                                          .PaddingT6,
                                                      fontStyle: ButtonFontStyle
                                                          .InterSemiBold14Gray50,
                                                      prefixWidget: Container(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 12,
                                                              right: 5,
                                                              bottom: 4),
                                                          margin: getMargin(
                                                              right: 4),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueA200,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              9))),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgEllipse1))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgChart,
                                                      height:
                                                          getVerticalSize(199),
                                                      width: getHorizontalSize(
                                                          300),
                                                      margin: getMargin(
                                                          left: 1, top: 13))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 14),
                                            padding: getPadding(
                                                left: 16,
                                                top: 14,
                                                right: 16,
                                                bottom: 14),
                                            decoration: AppDecoration
                                                .fillGray5001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 2),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text("Receita",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold18),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "Veja Mais",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12BlueA200))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Text(
                                                          "renda total"
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          1.0)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 1, right: 2),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: Text(
                                                                    "342,897.00",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold26)),
                                                            CustomIconButton(
                                                                height: 34,
                                                                width: 34,
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            1),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBarchart01))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 16),
                                                      child: Row(children: [
                                                        Text("+12,5%",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold14),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 3),
                                                            child: Text(
                                                                "semana pasada",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular14Gray600))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 24),
                                                      child: Text(
                                                          "pessoas investindo"
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          1.0)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Text("2,897",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold26)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 15, bottom: 9),
                                                      child: Row(children: [
                                                        Text("+5,4%",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold14),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 3),
                                                            child: Text(
                                                                "semana passada",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular14Gray600))
                                                      ]))
                                                ]))),
                                    
                        ] ))])))));
  }

  onTapArrowright6(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
