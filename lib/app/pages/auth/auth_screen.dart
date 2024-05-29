import 'package:car_app/app/pages/auth/register_screen.dart';
import 'package:car_app/app/pages/home/home_screen.dart';
import 'package:car_app/app/widgets/auth_screen/logo_widget.dart';
import 'package:car_app/app/widgets/bottom_nav_bar.dart';
import 'package:car_app/app/widgets/home_screen/map_widget.dart';
import 'package:car_app/const/colors.dart';
import 'package:car_app/logic/bloc/auth_bloc/auth_bloc.dart';
import 'package:car_app/logic/repositories/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoko_ui/shoko_ui.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _visible = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const LogoWidget(
            txt: 'Вход',
          ),
          const SizedBox(height: 24),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ShokoUIModernTextField(
                    controller: _email,
                    isOutline: false,
                    enableColor: state is AuthLoginErrorState
                        ? errorInpurt
                        : inactiveInput,
                    focusColor: activeEmptyInput,
                    label: 'Email',
                    labelTextStyle: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5)),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ShokoUIModernTextField(
                    obscureText: _visible,
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                      child: Icon(
                        _visible ? Icons.visibility_off : Icons.visibility,
                        size: 22,
                        color: Colors.grey,
                      ),
                    ),
                    controller: _password,
                    isOutline: false,
                    enableColor: state is AuthLoginErrorState
                        ? errorInpurt
                        : inactiveInput,
                    focusColor: activeEmptyInput,
                    label: 'Пароль',
                    labelTextStyle: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5)),
                  ),
                ),
              );
            },
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthLoginErrorState) {
                return Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Неверный Email или пароль',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.red)),
                      ),
                    ],
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          const Gap(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 67),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthLoginSuccesState) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavBar()),
                      (route) => false);
                }
              },
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                      context.read<AuthBloc>().add(AuthLoginEvent(
                          email: _email.text, password: _password.text));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: mainColor),
                    child: state is AuthLoginingState
                        ? const SizedBox(
                            height: 15,
                            width: 15,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          )
                        : Text(
                            'Войти',
                            style: GoogleFonts.manrope(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.white)),
                          ),
                  ),
                );
              },
            ),
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Нет аккаунта? ',
                style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 12)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                },
                child: Text(
                  'Зарегестрироваться',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: mainColor)),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
