import 'package:car_app/app/widgets/auth_screen/logo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoko_ui/shoko_ui.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
   final TextEditingController _login =TextEditingController();
   final TextEditingController _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const LogoWidget(),
        Padding(padding: const EdgeInsets.only(left: 16),child: Text('Вход',style:GoogleFonts.manrope(textStyle:const TextStyle(fontSize: 30,fontWeight: FontWeight.w700,letterSpacing: -0.4)))),
        const SizedBox(height: 24,),
         Padding(padding: const EdgeInsets.symmetric(horizontal:35),
        child: Column(children: [
          ShokoUIModernTextField(
            controller: _login,
            isOutline: false,
            enableColor: Colors.red,
            focusColor:Colors.green,
            label: 'Email',
            ),
          const SizedBox(height: 16),
          TextFormField(),
        ],))
         
      ]),
    );
  }
}