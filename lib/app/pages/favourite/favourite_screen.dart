import 'package:car_app/app/widgets/favourite_screen/favourite_car_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            SafeArea(
              child: Text(
                'Избранное',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.w700)),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                        height: 14,
                        child:
                            Image.asset('assets/favourite_screen/arrows.png')),
                    const SizedBox(width: 4),
                    Text(
                      'По возрастанию рейтинга',
                      style: GoogleFonts.manrope(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
                SizedBox(
                    height: 12,
                    child: Image.asset('assets/favourite_screen/lines.png')),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: const [
                  FavouriteCarWidget(
                    photo: 'assets/home_screen/toyota.png',
                    name: 'Toyota RAV4 2006',
                    sum: 2000,
                    score: 4.3,
                  ),
                  FavouriteCarWidget(
                    photo: 'assets/favourite_screen/corolla.png',
                    name: 'Toyota Corolla XI',
                    sum: 3200,
                    score: 4.5,
                  ),
                  FavouriteCarWidget(
                    photo: 'assets/favourite_screen/bmw.png',
                    name: 'BMW X1 20d',
                    sum: 4000,
                    score: 4.8,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
