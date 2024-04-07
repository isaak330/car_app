import 'package:car_app/app/pages/auth/auth_screen.dart';
import 'package:car_app/app/widgets/auth_screen/logo_widget.dart';
import 'package:car_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoko_ui/shoko_ui.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password1 = TextEditingController();
  final TextEditingController _password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const LogoWidget(
              txt: 'Регистрация',
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ShokoUIModernTextField(
                  controller: _name,
                  isOutline: false,
                  enableColor: inactiveInput,
                  focusColor: activeEmptyInput,
                  label: 'Имя',
                  labelTextStyle: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ClipRRect(
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
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ShokoUIModernTextField(
                  controller: _password1,
                  isOutline: false,
                  enableColor: inactiveInput,
                  focusColor: activeEmptyInput,
                  label: 'Пароль',
                  labelTextStyle: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ShokoUIModernTextField(
                  onChange: (value) => setState(() {}),
                  controller: _name,
                  isOutline: false,
                  enableColor: inactiveInput,
                  focusColor: activeEmptyInput,
                  label: 'Повторите пароль',
                  labelTextStyle: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 67),
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: mainColor),
                  child: _email.text.isNotEmpty
                      ? const SizedBox(
                          height: 15,
                          width: 15,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        )
                      : Text(
                          'Зарегистрироваться',
                          style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.white)),
                        ),
                ),
              ),
            ),
            const Gap(16),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Уже есть аккаунт? ',
                    style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthScreen()));
                    },
                    child: Text(
                      'Войти',
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
        ),
      ),
    );
  }
}
