import 'package:car_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/user_screen/userPh.png'))),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Физ. лицо',
              style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: -0.5)),
            ),
            Text('г. Москва',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        letterSpacing: -0.5))),
            Row(
              children: [
                Text('4.9',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(251, 213, 80, 1),
                            letterSpacing: -0.5))),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/bottom_nav_bar/car.png',
                  scale: 5,
                  color: const Color.fromRGBO(251, 213, 80, 1),
                )
              ],
            ),
            Text('9 отзывов',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: mainColor,
                        letterSpacing: -0.5))),
          ],
        )
      ],
    );
  }
}
