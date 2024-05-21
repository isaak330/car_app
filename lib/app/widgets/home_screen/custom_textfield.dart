import 'package:car_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32,
        // width: 200,
        child: TextField(
          cursorColor: blueColor,
          maxLines: 1,
          controller: controller,
          textAlign: TextAlign.justify,
          style: const TextStyle(color: Colors.black, fontSize: 14),
          cursorHeight: 14,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            prefixIcon: const Icon(
              Icons.search,
              color: blueColor,
              size: 25,
            ),
            isDense: true,
            hintText: 'Поиск машины',
            hintStyle: GoogleFonts.manrope(
                textStyle: const TextStyle(fontSize: 14, color: blueColor)),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: blueColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: blueColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: blueColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ));
  }
}
