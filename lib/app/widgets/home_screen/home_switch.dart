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
    return Container(
      height: 32,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.04),
            spreadRadius: 5,
            blurRadius: 2,
            offset: const Offset(2, 1))
      ]),
      child: Center(
        child: AnimatedToggleSwitch<bool>.size(
            height: 32,
            fittingMode: FittingMode.preventHorizontalOverlapping,
            current: positive,
            values: const [true, false],
            iconOpacity: 1,
            borderWidth: 2,
            indicatorSize: const Size.fromWidth(40),
            customIconBuilder: (context, local, global) => Image.asset(
                  local.value
                      ? 'assets/home_screen/listIcon.png'
                      : 'assets/home_screen/mapIcon.png',
                  scale: 3,
                  color: Color.lerp(
                      Colors.grey, Colors.black, local.animationValue),
                ),
            iconAnimationType: AnimationType.onHover,
            style: ToggleStyle(
              backgroundColor: Colors.white,
              indicatorColor: Colors.transparent,
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            selectedIconScale: 1.0,
            onChanged: (b) async {
              setState(() {
                positive = b;
              });
              // context.read<AuthTypeCubit>().changeType();
            }),
      ),
    );
  }
}
