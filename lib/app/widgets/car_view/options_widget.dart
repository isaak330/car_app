import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          alignment: Alignment.center,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade100),
          child: Text(
            '4 года',
            style: GoogleFonts.manrope(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow.shade100),
          child: Text(
            '2,4 с до 100 км/ч',
            style: GoogleFonts.manrope(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade100),
          child: Text(
            '500 л. с.',
            style: GoogleFonts.manrope(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
          ),
        )
      ],
    );
  }
}
