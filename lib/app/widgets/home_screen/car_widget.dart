import 'package:car_app/app/pages/car_view/car_view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CarWidget extends StatelessWidget {
  final String photo;
  final String brand;
  final int price;
  final double score;

  const CarWidget(
      {super.key,
      required this.photo,
      required this.brand,
      required this.price,
      required this.score});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CarViewScreen(
                      name: 'Toyota RAV4 2006',
                      price: price,
                      description:
                          'Стильный и удобный, этот автомобиль идеально подходит для выходных приключений, деловых поездок или просто уютных поездок по городу. Гибкие цены, обсуждаемый залог и надежное техническое состояние. Воплотите свои планы в реальность с этим надежным спутником на колесах!',
                      user: 'Сергей',
                      score: 4.3,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: const Offset(2, 1))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 135,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(photo), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12)),
            ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                brand,
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '$price ₽ в сутки',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w800)),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(score.toString(),
                          style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  letterSpacing: -0.5))),
                      const SizedBox(width: 4),
                      Image.asset(
                        'assets/bottom_nav_bar/car.png',
                        scale: 4,
                        color: score > 4.4
                            ? Colors.green
                            : const Color.fromRGBO(251, 213, 80, 1),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
