import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  final String assetName;
  final Color color;
  final double scale = 24;
  const NavigationIcon(
      {super.key, required this.assetName, required this.color, scale});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        width: scale,
        height: scale,
        child: Image.asset(
          assetName,
          color: color,
        ),
      ),
    );
  }
}
