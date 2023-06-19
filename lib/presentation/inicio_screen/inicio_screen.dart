import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_button.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(384),
                          width: double.maxFinite,
                          margin: getMargin(top: 36),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomAppBar(
                                          height: getVerticalSize(15),
                                          title: AppbarSubtitle2(
                                              text: "Bem-Vindo, Amigo",
                                              margin: getMargin(left: 59)),
                                          actions: [
                                            Container(
                                                height: getVerticalSize(15),
                                                width: getHorizontalSize(31),
                                                margin: getMargin(
                                                    left: 26, right: 26),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      AppbarSubtitle1(
                                                          text: "Login",
                                                          onTap: () {
                                                            onTapLogin(context);
                                                          }),
                                                      
                                                    ]))
                                          ]),
                                      Container(
                                          height: getVerticalSize(332),
                                          width: double.maxFinite,
                                          margin: getMargin(top: 29),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgShadow,
                                                    height:
                                                        getVerticalSize(528),
                                                    width:
                                                        getHorizontalSize(375),
                                                    alignment:
                                                        Alignment.bottomCenter),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            429),
                                                        width:
                                                            getHorizontalSize(
                                                                309),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMain,
                                                                  height:
                                                                      getVerticalSize(
                                                                          429),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          309),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath: ImageConstant
                                                                      .imgFlyingiphone12,
                                                                  height:
                                                                      getVerticalSize(
                                                                          402),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          284),
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              6))
                                                            ])))
                                              ]))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: getSize(26),
                                width: getSize(26),
                                alignment: Alignment.topLeft,
                                margin: getMargin(left: 27))
                          ])),
                      Container(
                          padding: getPadding(
                              left: 26, top: 39, right: 26, bottom: 39),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 39),
                                    child: Text("StartupInvestor ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold32BlueA200,
                                        )),
                                Container(
                                    width: getHorizontalSize(296),
                                    margin:
                                        getMargin(left: 5, top: 47, right: 21),
                                    child: Text(
                                        "Investe em Trending Startups do Brasil. Seja o seu proprio SharkTank! Acompanha o seu Resultado em tempo real.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular15)),
                                CustomButton(
                                    height: getVerticalSize(50),
                                    text: "Cadastre-se",
                                    margin: getMargin(top: 53, bottom: 5),
                                    padding: ButtonPadding.PaddingAll15,
                                    fontStyle: ButtonFontStyle.InterSemiBold16,
                                    onTap: () {
                                      onTapCadastrese(context);
                                    })
                              ]))
                    ]))));
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapCadastrese(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cadastroScreen);
  }
}
