import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:car_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSwitch extends StatefulWidget {
  const HomeSwitch({super.key});

  @override
  State<HomeSwitch> createState() => _HomeSwitchState();
}

class _HomeSwitchState extends State<HomeSwitch> {
  bool positive = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => MapSc))
      },
      child: Container(
        height: 32,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.04),
              spreadRadius: 5,
              blurRadius: 2,
              offset: const Offset(2, 1))
        ]),
        child: Image.asset('assets/home_screen/mapIcon.png',scale: 3,color: Colors.black,)));
  }
}
