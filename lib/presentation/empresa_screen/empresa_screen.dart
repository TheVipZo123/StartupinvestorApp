import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_iconbutton.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_image.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_button.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class EmpresaScreen extends StatelessWidget {
  
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
                        onTapArrowright4(context);
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
                                        padding: getPadding(left: 4, right: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 7),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "empresa"
                                                                .toUpperCase(),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular10
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            1.0))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Text(
                                                                "Nubank ",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold26))
                                                      ])),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage1,
                                                  height: getVerticalSize(57),
                                                  width: getHorizontalSize(66))
                                            ])),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 13),
                                            padding: getPadding(
                                                left: 8,
                                                top: 20,
                                                right: 8,
                                                bottom: 20),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12, right: 8),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: Text(
                                                                    "Portfolio",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold18)),
                                                            Spacer(),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "Ultima Semana",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon1,
                                                                height:
                                                                    getVerticalSize(
                                                                        4),
                                                                width:
                                                                    getHorizontalSize(
                                                                        8),
                                                                margin:
                                                                    getMargin(
                                                                        left: 6,
                                                                        top: 6,
                                                                        bottom:
                                                                            14))
                                                          ])),
                                                  Container(
                                                      width: double.maxFinite,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 1,
                                                              top: 11,
                                                              bottom: 36),
                                                          padding: getPadding(
                                                              all: 8),
                                                          decoration:
                                                              AppDecoration
                                                                  .white,
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    width: double
                                                                        .maxFinite,
                                                                    child: Container(
                                                                        width: getHorizontalSize(298),
                                                                        padding: getPadding(left: 7, top: 3, right: 7, bottom: 3),
                                                                        decoration: AppDecoration.fillGray200,
                                                                        child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(
                                                                                  height: getVerticalSize(140),
                                                                                  width: getHorizontalSize(250),
                                                                                  margin: getMargin(top: 1),
                                                                                  child: Stack(alignment: Alignment.centerRight, children: [
                                                                                    Align(
                                                                                        alignment: Alignment.centerLeft,
                                                                                        child: Row(children: [
                                                                                          Padding(padding: getPadding(top: 54, bottom: 54), child: Text("ano", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold14)),
                                                                                          Padding(
                                                                                              padding: getPadding(left: 18, top: 2, bottom: 4),
                                                                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                Align(alignment: Alignment.center, child: Text("2014", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500)),
                                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 7), child: Text("2015", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500))),
                                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 7), child: Text("2016", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500))),
                                                                                                Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 6), child: Text("2017", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500))),
                                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 7), child: Text("2018", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500))),
                                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 7), child: Text("2019", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500))),
                                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 7), child: Text("2020", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500)))
                                                                                              ])),
                                                                                          CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(120), width: getHorizontalSize(10), margin: getMargin(left: 4, top: 10, bottom: 10)),
                                                                                          SizedBox(height: getVerticalSize(140), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray100))
                                                                                        ])),
                                                                                    CustomImageView(svgPath: ImageConstant.imgGroupBlue500, height: getVerticalSize(138), width: getHorizontalSize(183), alignment: Alignment.centerRight)
                                                                                  ]))),
                                                                          Container(
                                                                              height: getVerticalSize(10),
                                                                              width: getHorizontalSize(200),
                                                                              margin: getMargin(right: 14),
                                                                              child: Stack(alignment: Alignment.topCenter, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroupBlueGray100, height: getVerticalSize(10), width: getHorizontalSize(200), alignment: Alignment.center),
                                                                                Align(alignment: Alignment.topCenter, child: SizedBox(width: getHorizontalSize(200), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray100)))
                                                                              ])),
                                                                          Padding(
                                                                              padding: getPadding(left: 67, top: 1, right: 14),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                Text("0", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500),
                                                                                Padding(padding: getPadding(left: 34), child: Text("200", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500)),
                                                                                Padding(padding: getPadding(left: 31), child: Text("400", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500)),
                                                                                Padding(padding: getPadding(left: 31), child: Text("600", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500)),
                                                                                Padding(padding: getPadding(left: 21), child: Text("800", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular10Gray500))
                                                                              ])),
                                                                          Padding(
                                                                              padding: getPadding(top: 7, right: 46),
                                                                              child: Text("valor na bolsa ( mi)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold14))
                                                                        ])))
                                                              ])))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 14),
                                            padding: getPadding(
                                                left: 10,
                                                top: 14,
                                                right: 10,
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
                                                      padding: getPadding(
                                                          left: 6, right: 8),
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
                                                      padding: getPadding(
                                                          left: 6, top: 21),
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
                                                          left: 6,
                                                          top: 1,
                                                          right: 8),
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
                                                      padding: getPadding(
                                                          left: 6, top: 16),
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
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 24,
                                                          bottom: 9),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "pessoas investindo"
                                                                          .toUpperCase(),
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular10
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(1.0))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              5),
                                                                      child: Text(
                                                                          "2,897",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterSemiBold26)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              15),
                                                                      child: Row(
                                                                          children: [
                                                                            Text("+5,4%",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterSemiBold14),
                                                                            Padding(
                                                                                padding: getPadding(left: 3),
                                                                                child: Text("semana passada", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14Gray600))
                                                                          ]))
                                                                ]),
                                                            CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        105),
                                                                text:
                                                                    "INVESTIR",
                                                                    onTap: () {
                                                                      launchWhatsAppUri() async {
                                    final link = WhatsAppUnilink(
                                     phoneNumber: '5551980551100',
                                     text: "Hey! I'm inquiring about the apartment listing",
                                                              );
                                                              await launch(link.asUri() as String);

                                                                    }},
                                                                margin:
                                                                    getMargin(
                                                                        top: 28,
                                                                        bottom:
                                                                            15),
                                                                variant:
                                                                    ButtonVariant
                                                                        .FillIndigo300,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterSemiBold14)
                                                          ]))
                                                ]))),
                                  ]))
                        ])))));
  }

  onTapArrowright4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
