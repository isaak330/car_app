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
              brand: 'Toyota RAV4 2006',
              price: 2000,
              score: 4.3,
            ),
            CarWidget(
              photo: 'assets/favourite_screen/corolla.png',
              brand: 'Toyota Corolla XI',
              price: 3200,
              score: 4.5,
            ),
            CarWidget(
              photo: 'assets/favourite_screen/bmw.png',
              brand: 'BMW X1 20d',
              price: 4000,
              score: 4.8,
            ),
          ],
        ),
      ),
    );
  }
}
