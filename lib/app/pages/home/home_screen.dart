import 'package:car_app/app/widgets/home_screen/app_bar_home.dart';
import 'package:car_app/app/widgets/home_screen/car_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: SizedBox(
        height: 500,
        child: GridView(
          padding: const EdgeInsets.only(top: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: const [
            CarWidget(),
            // CarWidget(),
            // CarWidget(),
          ],
        ),
      ),
    );
  }
}
