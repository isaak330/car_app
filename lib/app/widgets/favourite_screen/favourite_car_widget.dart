import 'package:car_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteCarWidget extends StatefulWidget {
  final String photo;
  final String name;
  final int sum;
  final double score;

  const FavouriteCarWidget(
      {super.key,
      required this.photo,
      required this.name,
      required this.sum,
      required this.score});

  @override
  State<FavouriteCarWidget> createState() => _FavouriteCarWidgetState();
}

class _FavouriteCarWidgetState extends State<FavouriteCarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
              width: 180,
              height: 130,
              child: Image.asset(
                widget.photo,
              )),
          // 'assets/home_screen/toyota.png'
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    Text("${widget.sum} в сутки"),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(widget.score.toString(),
                            style: GoogleFonts.manrope(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    letterSpacing: -0.5,
                                    color: greyText))),
                        const SizedBox(width: 4),
                        Image.asset(
                          'assets/bottom_nav_bar/car.png',
                          scale: 4,
                          color: const Color.fromRGBO(251, 213, 80, 1),
                        )
                      ],
                    ),
                    const SizedBox(height: 6),
                    // const Text(
                    //   'data',
                    //   overflow: TextOverflow.clip,
                    // ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            height: 32,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromRGBO(153, 128, 255, 1)),
                            alignment: Alignment.center,
                            child: Text(
                              'Забронировать',
                              style: GoogleFonts.manrope(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Colors.white)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
