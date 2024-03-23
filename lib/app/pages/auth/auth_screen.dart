import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Stack(
          children: [
        Image.asset('assets/auth_screen/backImage.png',scale: 1),
        Align(alignment: Alignment.center,heightFactor: 2,child: Image.asset('assets/auth_screen/carIcon.png',scale: 3)),
        ],),
         Padding(padding: const EdgeInsets.symmetric(horizontal: 16),child: Text('Вход',style:GoogleFonts.manrope(textStyle:const TextStyle(fontSize: 30,fontWeight:FontWeight.w700,letterSpacing: -0.5 )))),
         
        // const SizedBox(height: 16,),

      ]),
    );
  }
}