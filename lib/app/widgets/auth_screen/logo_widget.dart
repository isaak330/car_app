import 'package:flutter/cupertino.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
       alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/auth_screen/backImage.png'),
          fit: BoxFit.cover)
      ),
      child: Align(heightFactor: 2,child: Image.asset('assets/auth_screen/carIcon.png',scale: 3,)),
    );
  }
}