import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  final String txt;
  const LogoWidget({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 250,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/auth_screen/backImage.png'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                txt,
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.4)),
              ),
            )),
      ],
    );
  }
}
