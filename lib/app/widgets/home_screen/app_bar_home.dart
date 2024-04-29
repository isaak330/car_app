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
    return AppBar(
      leadingWidth: 200,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Padding(
            padding: const EdgeInsets.only(top: 8), child: CustomTextField()),
      ),
      actions: const [
        HomeSwitch(),
        SizedBox(
          width: 16,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: NotificationIcon(),
        )
      ],
    );
  }
}
