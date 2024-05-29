import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CarViewScreen extends StatelessWidget {
  final String name;
  final int price;
  final String description;
  final String user;

  const CarViewScreen(
      {super.key,
      required this.name,
      required this.price,
      required this.description,
      required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/home_screen/toyota.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  name,
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 28)),
                ),
                SizedBox(
                  height: 55,
                  child: ListView(
                    children: const [],
                  ),
                ),
                Text('$price ₽ в сутки',
                    style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w800),
                    )),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
