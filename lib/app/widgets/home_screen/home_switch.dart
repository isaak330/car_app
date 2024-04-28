import 'package:animated_toggle_switch/animated_toggle_switch.dart';
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
    return Center(
      child: AnimatedToggleSwitch<bool>.size(
          height: 32,
          fittingMode: FittingMode.preventHorizontalOverlapping,
          current: positive,
          values: const [true, false],
          iconOpacity: 1,
          borderWidth: 4,
          indicatorSize: const Size.fromWidth(double.infinity),
          customIconBuilder: (context, local, global) => Image.asset(
                local.value
                    ? 'assets/home_screen/listIcon.png'
                    : 'assets/home_screen/mapIcon.png',
                color: Color.lerp(
                    Colors.black, Colors.green, local.animationValue),
              ),

          // Text(
          //     local.value ? 'Логин и пароль' : 'СМС код',
          //     style: TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.w500,
          //         color: Color.lerp(
          //             Colors.black, Colors.black, local.animationValue))),
          iconAnimationType: AnimationType.onHover,
          style: ToggleStyle(
            backgroundColor: Colors.white,
            // indicatorColor: Colors.te,
            indicatorBoxShadow: [
              const BoxShadow(color: Colors.grey, blurRadius: 24)
            ],
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
    );
  }
}
