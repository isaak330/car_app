import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  final String assetName;
  final Color color;
  const NavigationIcon(
      {super.key, required this.assetName, required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        width: 24,
        height: 24,
        child: Image.asset(
          assetName,
          color: color,
        ),
      ),
    );
  }
}
