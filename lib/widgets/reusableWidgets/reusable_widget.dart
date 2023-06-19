import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_startupinvestor/core/app_export.dart';
import 'package:flutter_application_startupinvestor/core/utils/color_constant.dart';
import 'package:provider/provider.dart';

Image logoWidget(String imageName ){
return Image.asset(
  imageName,
  
  fit: BoxFit.fitWidth ,
  width: 50 ,
  height: 70,
             );
}

TextField reusable_textfield(String text, IconData icon, bool isPassswordType, 
TextEditingController controller  ) {
return TextField(
controller: controller ,
obscureText: isPassswordType,
enableSuggestions: !isPassswordType ,
autocorrect: !isPassswordType,

cursorColor: Colors.white,
style: TextStyle(color: Colors.white.withOpacity(0.9)),
decoration: InputDecoration(
  prefixIcon: Icon(
    icon,
    color: Colors.white70,
  ),

  labelText: text,
  labelStyle: TextStyle(color: Colors.white70.withOpacity(0.9)),
  filled: true,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  fillColor: Colors.white.withOpacity(0.3),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(width: 0, style: BorderStyle.none)
  ),
),
keyboardType: isPassswordType
? TextInputType.visiblePassword
: TextInputType.emailAddress


);

}

TextField reusable_textfield_black_on_white(String text, IconData icon, bool isPassswordType, 
TextEditingController controller  ) {
return TextField(
controller: controller ,
obscureText: isPassswordType,
enableSuggestions: !isPassswordType ,
autocorrect: !isPassswordType,
cursorColor: Colors.black,
style: TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 18),
decoration: InputDecoration(
  prefixIcon: Icon(
    icon,
    color: Colors.black87,
  ),
   
  
  label: Text(text, 
  overflow: TextOverflow.ellipsis,
  textAlign: TextAlign.left,
  style: AppStyle.txtInterLight30),

  filled: true,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  fillColor: ColorConstant.gray50,
  border: InputBorder.none,
  
  
),

keyboardType: isPassswordType
? TextInputType.visiblePassword
: TextInputType.emailAddress


);

}





TextField reusable_textfield_black_on_white_no_icons(String text, bool isPassswordType, 
TextEditingController controller  ) {
return TextField(
controller: controller ,
obscureText: isPassswordType,
enableSuggestions: !isPassswordType ,
autocorrect: !isPassswordType,

  
  


inputFormatters:[
 LengthLimitingTextInputFormatter(50)],

 maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
cursorColor: Colors.black,
style: TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 18),
decoration: InputDecoration(
  
   
  
  label: Text(text, 
 
  textAlign: TextAlign.left,
  style: AppStyle.txtInterLight30),

  filled: true,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  fillColor: ColorConstant.gray50,
  border: InputBorder.none,
  
  
),

keyboardType: isPassswordType
? TextInputType.visiblePassword
: TextInputType.emailAddress


);

}

Container SigninSignUpbutton(

  BuildContext context, bool isLogin, Function onTap) {
    return Container(

      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed:() {
          onTap();
        }, 
      
      child: Text(
        isLogin ? 'ENTRAR' : 'CADASTRE-SE',
        style: const TextStyle(
          color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states)  {
          if (states.contains(MaterialState.pressed)) {
            return Colors.black26;
          }
          return Colors.white;


        }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder> (
             RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      )) 
      ),
      );
    
  }




 


