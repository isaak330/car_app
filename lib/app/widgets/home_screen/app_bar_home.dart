import 'package:car_app/app/widgets/home_screen/home_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 200,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 5,
          color: Colors.green,
          child: const TextField(),
        ),
      ),
      actions: [
        const HomeSwitch(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 10,
            height: 10,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
