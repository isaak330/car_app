import 'package:car_app/app/widgets/home_screen/custom_textfield.dart';
import 'package:car_app/app/widgets/home_screen/home_switch.dart';
import 'package:car_app/app/widgets/notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AppBarHome extends StatefulWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  State<AppBarHome> createState() => _AppBarHomeState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

enum Types { a, b, c, d }

class _AppBarHomeState extends State<AppBarHome> {
  Types? _type = Types.a;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: CustomTextField()),
                const SizedBox(width: 4),
                const HomeSwitch(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: NotificationIcon(),
                )
              ],
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 350,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 36),
                                Text('Тип сортировки:',
                                    style: GoogleFonts.manrope(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w800, fontSize: 22, letterSpacing: -0.5))),
                                ListTile(
                                  title: Text(
                                    'По удаленности',
                                    style: GoogleFonts.manrope(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: -0.5)),
                                  ),
                                  leading: Radio<Types>(
                                    value: Types.a,
                                    groupValue: _type,
                                    onChanged: (Types? value) {
                                      setState(() {
                                        _type = value;
                                      });
                                    },
                                  ),
                                ),
                                                                ListTile(
                                  title: Text(
                                    'Подешевле',
                                    style: GoogleFonts.manrope(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: -0.5)),
                                  ),
                                  leading: Radio<Types>(
                                    value: Types.b,
                                    groupValue: _type,
                                    onChanged: (Types? value) {
                                      setState(() {
                                        _type = value;
                                      });
                                    },
                                  ),
                                ),
                                                                ListTile(
                                  title: Text(
                                    'Подороже',
                                    style: GoogleFonts.manrope(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: -0.5)),
                                  ),
                                  leading: Radio<Types>(
                                    value: Types.c,
                                    groupValue: _type,
                                    onChanged: (Types? value) {
                                      setState(() {
                                        _type = value;
                                      });
                                    },
                                  ),
                                ),
                                                                ListTile(
                                  title: Text(
                                    'По рейтингу',
                                    style: GoogleFonts.manrope(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: -0.5)),
                                  ),
                                  leading: Radio<Types>(
                                    value: Types.d,
                                    groupValue: _type,
                                    onChanged: (Types? value) {
                                      setState(() {
                                        _type = value;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ));
              },
              child: Row(
                children: [
                  const Icon(Icons.sync, size: 18),
                  const SizedBox(width: 4),
                  Text(
                    'По удаленности',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, letterSpacing: -0.5)),
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
