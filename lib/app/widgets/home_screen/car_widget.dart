import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.03),
                spreadRadius: 5,
                blurRadius: 2,
                offset: const Offset(2, 1))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/home_screen/toyota.png'))),
            width: double.maxFinite,
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Toyota RAV4 2006',
              style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '2 000 ₽ в сутки',
              style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w800)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('4.9',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                letterSpacing: -0.5))),
                    const SizedBox(width: 2),
                    Image.asset(
                      'assets/bottom_nav_bar/car.png',
                      scale: 5,
                      color: const Color.fromRGBO(251, 213, 80, 1),
                    )
                  ],
                ),
                Text(
                  '100 м от вас',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
