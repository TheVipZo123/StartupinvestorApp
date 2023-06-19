import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_image.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_button.dart';

import '../login_screen/login_screen.dart';

class HomeScreen extends StatelessWidget {

   TextEditingController _userNameTextController = new TextEditingController();
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
                title: AppbarSubtitle(text: "vip", margin: getMargin(left: 6)),
                actions: [
                      AppbarSubtitle1(
                      text: "Cadastrar a sua empresa",
                      margin:
                          getMargin(left: 20, top: 18, right: 20, bottom: 22),
                      onTap: () {
                        onTapCadastrarEmpresa(context);
                      }),
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 1),
                    child: Padding(
                        padding: getPadding(left: 22, right: 22),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapAward(context);
                                      },
                                      child: Container(
                                          width: getHorizontalSize(331),
                                          padding: getPadding(
                                              left: 18,
                                              top: 17,
                                              right: 18,
                                              bottom: 17),
                                          decoration: AppDecoration.fillGray50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        "INVESTIMENTO"
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
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Text("Trending",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold26))),
                                                Container(
                                                    margin: getMargin(
                                                        top: 20, right: 16),
                                                    decoration: AppDecoration
                                                        .blue
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL14),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 11,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Nubank",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular14)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage1,
                                                              height:
                                                                  getVerticalSize(
                                                                      39),
                                                              width:
                                                                  getHorizontalSize(
                                                                      42),
                                                              margin: getMargin(
                                                                  left: 77))
                                                        ])),
                                                Container(
                                                    margin: getMargin(
                                                        top: 11, right: 13),
                                                    decoration: AppDecoration
                                                        .blue
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL14),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 11,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "QuintoAndar",
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
                                                                      .imgImage2,
                                                              height:
                                                                  getVerticalSize(
                                                                      39),
                                                              width:
                                                                  getHorizontalSize(
                                                                      48),
                                                              margin: getMargin(
                                                                  left: 46))
                                                        ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 50,
                                                        top: 15,
                                                        right: 13,
                                                        bottom: 77),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgEllipse1,
                                                              height:
                                                                  getVerticalSize(
                                                                      4),
                                                              width:
                                                                  getHorizontalSize(
                                                                      24),
                                                              margin: getMargin(
                                                                  top: 29,
                                                                  bottom: 4)),
                                                          Expanded(
                                                              child: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              30),
                                                                  decoration: AppDecoration
                                                                      .blue
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .customBorderTL14),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 11, bottom: 10),
                                                                            child: Text("Cobli", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14Gray50)),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage3,
                                                                            height: getVerticalSize(39),
                                                                            width: getHorizontalSize(45),
                                                                            margin: getMargin(left: 90))
                                                                      ])))
                                                        ]))
                                              ])))),
                              Container(
                                  width: double.maxFinite,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapSale(context);
                                      },
                                      child: Container(
                                          width: getHorizontalSize(331),
                                          margin: getMargin(top: 14),
                                          padding: getPadding(
                                              left: 18,
                                              top: 17,
                                              right: 18,
                                              bottom: 17),
                                          decoration: AppDecoration.fillGray5001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Acompanhe".toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    1.0))),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Text("Estatisticas ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold26)),
                                                Container(
                                                    height:
                                                        getVerticalSize(138),
                                                    width:
                                                        getHorizontalSize(159),
                                                    margin: getMargin(
                                                        left: 63, top: 37),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          137),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          159),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                height: getVerticalSize(137),
                                                                                width: getHorizontalSize(159),
                                                                                decoration: BoxDecoration(color: ColorConstant.blueA200, borderRadius: BorderRadius.circular(getHorizontalSize(79))))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerRight,
                                                                            child: Padding(padding: getPadding(right: 27), child: Text("50%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14)))
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          138),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              2),
                                                                      color: ColorConstant
                                                                          .whiteA700)))
                                                        ])),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            top: 48,
                                                            right: 27,
                                                            bottom: 1),
                                                        child: Text(
                                                            "Confira Mais",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14BlueA200)))
                                              ])))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 14),
                                      padding: getPadding(left: 15, right: 15),
                                      decoration: AppDecoration.fillGray5001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
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
                                                    left: 3, top: 18),
                                                child: Text(
                                                    "Para voce".toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    1.0)))),
                                            Padding(
                                                padding:
                                                    getPadding(left: 3, top: 6),
                                                child: Text("Estatisticas",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold26)),
                                            CustomButton(
                                                height: getVerticalSize(30),
                                                width: getHorizontalSize(74),
                                                text: "3,720",
                                                margin: getMargin(
                                                    left: 88, top: 19),
                                                variant: ButtonVariant.Black,
                                                shape:
                                                    ButtonShape.RoundedBorder6,
                                                padding:
                                                    ButtonPadding.PaddingT6,
                                                fontStyle: ButtonFontStyle
                                                    .InterSemiBold14Gray50,
                                                prefixWidget: Container(
                                                    padding: getPadding(
                                                        left: 5,
                                                        top: 12,
                                                        right: 5,
                                                        bottom: 4),
                                                    margin: getMargin(right: 4),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blueA200,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    9))),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEllipse1))),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgChart,
                                                height: getVerticalSize(199),
                                                width: getHorizontalSize(300),
                                                margin:
                                                    getMargin(left: 1, top: 13))
                                          ])))
                            ]))))));
  }

  onTapAward(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trendingScreen);
  }

  onTapSale(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.estatisticaScreen);
  }

  onTapCadastrarEmpresa(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cadastroEmpresaScreen);
  }
}
