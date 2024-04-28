import 'package:car_app/app/widgets/user_screen/user_info_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoko_ui/shoko_ui.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          const UserInfoWidget(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Иванов Иван',
            style: GoogleFonts.manrope(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    letterSpacing: -0.5)),
          ),
          const SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          'assets/bottom_nav_bar/car.png',
                        ))),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Управление объявлениями',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.5)),
                      )
                    ],
                  ),
                ),
                const Gap(32),
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/bottom_nav_bar/car.png'))),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Управление объявлениями',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.5)),
                      )
                    ],
                  ),
                ),
                const Gap(32),
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/bottom_nav_bar/car.png'))),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Управление объявлениями',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.5)),
                      )
                    ],
                  ),
                ),
                const Gap(32),
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/bottom_nav_bar/car.png'))),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Управление объявлениями',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.5)),
                      )
                    ],
                  ),
                ),
                const Gap(32),
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/bottom_nav_bar/car.png'))),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Управление объявлениями',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.5)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
