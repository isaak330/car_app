import 'package:car_app/app/widgets/car_view/options_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CarViewScreen extends StatelessWidget {
  final String name;
  final int price;
  final String description;
  final String user;
  final double score;

  const CarViewScreen(
      {super.key,
      required this.name,
      required this.price,
      required this.description,
      required this.user,
      required this.score});

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
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(height: 55, child: OptionsWidget()),
                const SizedBox(
                  height: 12,
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
                const SizedBox(height: 12),
                Text(
                  'Сергей',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(score.toString(),
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                letterSpacing: -0.5))),
                    const SizedBox(width: 4),
                    Image.asset(
                      'assets/bottom_nav_bar/car.png',
                      scale: 2,
                      color: score > 4.4
                          ? Colors.green
                          : const Color.fromRGBO(251, 213, 80, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  child: Container(
                    height: 55,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromRGBO(153, 128, 255, 1)),
                    alignment: Alignment.center,
                    child: Text(
                      'Забронировать',
                      style: GoogleFonts.manrope(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
