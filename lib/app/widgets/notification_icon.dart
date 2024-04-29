import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.04),
                spreadRadius: 5,
                blurRadius: 2,
                offset: const Offset(2, 1))
          ]),
      height: 32,
      width: 32,
      alignment: Alignment.center,
      child: const Icon(
        Icons.notifications_none_sharp,
      ),
    );
  }
}
