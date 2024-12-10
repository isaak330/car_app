import 'package:car_app/app/pages/auth/auth_screen.dart';
import 'package:car_app/app/pages/auth/register_screen.dart';
import 'package:car_app/app/pages/home/home_screen.dart';
import 'package:car_app/app/widgets/bottom_nav_bar.dart';
import 'package:car_app/app/widgets/home_screen/map_widget.dart';
import 'package:car_app/logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

    final GoRouter _router = GoRouter(
    initialLocation: '/main',
    routes: [],
    redirect: (BuildContext context, state) {
      return null;
    },
  );

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: BottomNavBar()),
    );
  }
}
