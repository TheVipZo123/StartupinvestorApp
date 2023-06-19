import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_image.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:flutter_application_startupinvestor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_application_startupinvestor/widgets/custom_button.dart';

class CadastroFeitoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 53,
                leading: AppbarImage(
                    height: getSize(26),
                    width: getSize(26),
                    svgPath: ImageConstant.imgCamera,
                    margin: getMargin(left: 27, top: 22, bottom: 8)),
                title: AppbarSubtitle2(
                    text: "Bem Vindo, Amigo", margin: getMargin(left: 6)),
                actions: [
                  Container(
                      height: getSize(20),
                      width: getSize(20),
                      margin:
                          getMargin(left: 10, top: 8, right: 10, bottom: 28),
                      child: Stack(alignment: Alignment.center, children: [
                        AppbarImage(
                            height: getSize(20),
                            width: getSize(20),
                            svgPath: ImageConstant.imgArrowright,
                            onTap: () {
                              onTapArrowright2(context);
                            }),

                      ]))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(332),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgShadow,
                                    height: getVerticalSize(528),
                                    width: getHorizontalSize(375),
                                    alignment: Alignment.bottomCenter),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(429),
                                        width: getHorizontalSize(309),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgMain,
                                                  height: getVerticalSize(429),
                                                  width: getHorizontalSize(309),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFlyingiphone12,
                                                  height: getVerticalSize(402),
                                                  width: getHorizontalSize(284),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  margin: getMargin(top: 6))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("StartupInvestor",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold32BlueA200)),
                      Padding(
                          padding: getPadding(top: 98, bottom: 5),
                          child: Text("Cadastro Concluido",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold36))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "Entrar",
                margin: getMargin(left: 26, right: 26, bottom: 45),
                padding: ButtonPadding.PaddingAll15,
                fontStyle: ButtonFontStyle.InterSemiBold16,
                onTap: () {
                  onTapEntrar(context);
                })));
  }

  onTapEntrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapArrowright2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inicioScreen);
  }
}
