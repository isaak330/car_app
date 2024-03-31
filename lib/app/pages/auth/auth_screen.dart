import 'package:car_app/app/widgets/auth_screen/logo_widget.dart';
import 'package:car_app/app/widgets/map_widget.dart';
import 'package:car_app/const/colors.dart';
import 'package:car_app/logic/bloc/user_bloc/user_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const LogoWidget(),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Вход',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4)))),
          const SizedBox(height: 24),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: ShokoUIModernTextField(
                          controller: _email,
                          isOutline: false,
                          enableColor: inactiveInput,
                          focusColor: activeEmptyInput,
                          label: 'Email',
                          labelTextStyle: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.5)),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: ShokoUIModernTextField(
                          controller: _password,
                          isOutline: false,
                          enableColor: state is UserLoginErrorState
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
                      );
                    },
                  ),
                  const Gap(40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: BlocConsumer<UserBloc, UserState>(
                      listener: (context, state) {
                        if (state is UserLoginSuccesState) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MapWidget()),
                              (route) => false);
                        }
                      },
                      builder: (context, state) {
                        return GestureDetector(
                          onTap: () {
                            context.read<UserBloc>().add(UserLoginEvent(
                                email: _email.text, password: _password.text));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: mainColor),
                            child: state is UserLoginingState
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: Row(
                      children: [
                        Text(
                          'Нет аккаунта? ',
                          style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12)),
                        ),
                        InkWell(
                          onTap: () {
                            print('reg');
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
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
