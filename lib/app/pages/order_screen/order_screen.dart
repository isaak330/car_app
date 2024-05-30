import 'package:car_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            Text('Почти готово!',style: GoogleFonts.manrope(textStyle:TextStyle(fontSize: 36,fontWeight: FontWeight.w700)),),
            SizedBox(height: 32),
            Text('Эта машина доступна для аренды от 1 часа до 4 дней.',style: GoogleFonts.manrope(textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))),
            SizedBox(height: 28),
            Text('Выберите дату начала и\nокончания аренды:',style: GoogleFonts.manrope(textStyle:TextStyle(fontSize: 22,fontWeight: FontWeight.w600))),
            SizedBox(height: 36),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16
              ),
              height: 45,
              width: 320,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey.shade200),
              child: Row(children: [Text('от'),SizedBox(width: 150,),Text('до')],),
            ),
            SizedBox(height: 150),
            Center(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),)),
            SizedBox(height: 70,),
            Container(
              height: 24,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: mainColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('1ч',style: GoogleFonts.manrope(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500))),
              Text('4д',style: GoogleFonts.manrope(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w500)))
            ],),
            SizedBox(
            height: 16,
            ),
            GestureDetector(
                    child: Container(
                      height: 40,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
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
    );
  }
}