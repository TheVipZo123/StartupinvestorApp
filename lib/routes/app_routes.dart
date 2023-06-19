import 'package:flutter/material.dart';
import 'package:flutter_application_startupinvestor/presentation/inicio_screen/inicio_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/cadastro_screen/cadastro_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/login_screen/login_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/cadastro_feito_screen/cadastro_feito_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/testes/testes.dart';
import 'package:flutter_application_startupinvestor/presentation/trending_screen/trending_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/empresa_screen/empresa_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/logoff_concluido_screen/logoff_concluido_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/empresa_two_screen/empresa_two_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/home_screen/home_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/estatistica_screen/estatistica_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutter_application_startupinvestor/presentation/cadastro_empresas/cadastro_empresas.dart';


class AppRoutes {
  static const String inicioScreen = '/inicio_screen';

  static const String cadastroEmpresaScreen = '/cadastro_empresas';

  static const String cadastroScreen = '/cadastro_screen';

  static const String loginScreen = '/login_screen';

  static const String cadastroFeitoScreen = '/cadastro_feito_screen';

  static const String trendingScreen = '/trending_screen';

  static const String empresaScreen = '/empresa_screen';

  static const String logoffConcluidoScreen = '/logoff_concluido_screen';

  static const String empresaTwoScreen = '/empresa_two_screen';

  static const String homeScreen = '/home_screen';

  static const String estatisticaScreen = '/estatistica_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

   static const String testesScreen = '/testes';

  static Map<String, WidgetBuilder> routes = {
    inicioScreen: (context) => InicioScreen(),
    cadastroScreen: (context) => CadastroScreen(),
    loginScreen: (context) => LoginScreen(),
    cadastroFeitoScreen: (context) => CadastroFeitoScreen(),
    trendingScreen: (context) => TrendingScreen(),
    empresaScreen: (context) => EmpresaScreen(),
    logoffConcluidoScreen: (context) => LogoffConcluidoScreen(),
    empresaTwoScreen: (context) => EmpresaTwoScreen(),
    homeScreen: (context) => HomeScreen(),
    estatisticaScreen: (context) => EstatisticaScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    cadastroEmpresaScreen: (context)=> CadastroPage(),
    testesScreen:(context) => TestesScreen()
  };
}
