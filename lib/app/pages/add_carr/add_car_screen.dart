import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({super.key});

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  @override
  Widget build(BuildContextcontext) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
              child: Text(
            'Внешний вид',
            style: GoogleFonts.manrope(textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 36)),
          )),
          SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey.shade300),
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.image_search_rounded,
              size: 70,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Загрузите фото',
            style: GoogleFonts.manrope(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          )
        ],
      ),
    );
  }
}
