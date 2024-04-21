import 'package:car_app/app/pages/auth/auth_screen.dart';
import 'package:car_app/app/widgets/auth_screen/logo_widget.dart';
import 'package:car_app/const/colors.dart';
import 'package:car_app/logic/bloc/register_bloc/register_bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoko_ui/shoko_ui.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _lName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password1 = TextEditingController();
  final TextEditingController _password2 = TextEditingController();
  late bool validMail = true;
  late bool matchPass = false;
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    keyboardType: TextInputType.name,
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
                    keyboardType: TextInputType.name,
                    controller: _lName,
                    isOutline: false,
                    enableColor: inactiveInput,
                    focusColor: activeEmptyInput,
                    label: 'Фамилия',
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
                    onChange: (value) {
                      validMail = EmailValidator.validate(_email.text);
                      setState(() {});
                    },
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
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
              !validMail && _email.text.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 2),
                      child: Text(
                        'Неверный формат Email',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.red)),
                      ),
                    )
                  : Container(),
              const SizedBox(height: 16),
              Padding(
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
                    onChange: (value) {
                      if (_password1.text == _password2.text) {
                        matchPass == true;
                      } else {
                        matchPass = false;
                      }
                      setState(() {});
                    },
                    controller: _password1,
                    keyboardType: TextInputType.visiblePassword,
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
                    obscureText: _visible,
                    onChange: (value) {
                      if (_password1.value == _password2.value) {
                        matchPass = true;
                      } else {
                        matchPass = false;
                      }
                      setState(() {});
                    },
                    controller: _password2,
                    keyboardType: TextInputType.visiblePassword,
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
              matchPass == false &&
                      _password1.text.isNotEmpty &&
                      _password2.text.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 2),
                      child: Text(
                        'Пароли не совпадают',
                        style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.red)),
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 67),
                child: BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    if (state is RegisterSuccessState) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthScreen()),
                          (route) => false);
                    }
                  },
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        if (validMail == true && matchPass == true) {
                          context.read<RegisterBloc>().add(RegisterRegEvent(
                              email: _email.text,
                              name: _name.text,
                              lName: _lName.text,
                              pass: _password2.text));
                        } else {}
                      },
                      child: BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, state) {
                          return Container(
                            alignment: Alignment.center,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: mainColor),
                            child: state is RegisterWaitState
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
                          );
                        },
                      ),
                    );
                  },
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
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AuthScreen()),
                            (route) => false);
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
              ),
              const SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    );
  }
}
