import 'package:car_app/app/widgets/home_screen/custom_textfield.dart';
import 'package:car_app/app/widgets/home_screen/home_switch.dart';
import 'package:car_app/app/widgets/notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          children: [
            Expanded(child: CustomTextField()),
            const HomeSwitch(),
            // const SizedBox(
            //   width: 16,
            // ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: NotificationIcon(),
            )
          ],
        ),
      ),
    );
  }
}
