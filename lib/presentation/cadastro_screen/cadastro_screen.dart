import 'package:flutter/material.dart';


import 'package:flutter_application_startupinvestor/routes/app_routes.dart';
import 'package:flutter_application_startupinvestor/widgets/reusableWidgets/reusable_widget.dart';


class CadastroScreen extends StatefulWidget {
  const CadastroScreen({Key? key}) : super(key: key);
  @override
  _SignUpScreenState createState() => new _SignUpScreenState();
}

class _SignUpScreenState extends State<CadastroScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Cadastro",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              //Color(0xFFD5FFFF),
              Color(0xFFADD8E6),
          Color(0xFF408EC6),
          Color(0xFF408EC6),
          
          
          
          
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                reusable_textfield("Digite o Login", Icons.person_outline,
                    false, _userNameTextController),
                SizedBox(
                  height: 20,
                ),
                reusable_textfield("Digite o seu Email", Icons.person_outline,
                    false, _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusable_textfield("Digite a Senha", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                reusable_textfield("Confirme a Senha", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                SigninSignUpbutton(context, false, () {Navigator.pushNamed(context, AppRoutes.cadastroFeitoScreen);})]
                )))));
                  
                       
                    
                  }
                }




  onTapArrowright(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inicioScreen);
  }

