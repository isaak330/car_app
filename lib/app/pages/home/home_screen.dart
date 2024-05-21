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
      body: Expanded(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 225, crossAxisCount: 2),
          children: const [
            CarWidget(
              photo: 'assets/home_screen/toyota.png',
              brand: 'papa',
              price: 123,
              score: 2.5,
            ),
            CarWidget(
              photo: 'assets/home_screen/toyota.png',
              brand: 'papa',
              price: 123,
              score: 2.5,
            ),
            CarWidget(
              photo: 'assets/home_screen/toyota.png',
              brand: 'papa',
              price: 123,
              score: 2.5,
            ),
          ],
        ),
      ),
    );
  }
}
