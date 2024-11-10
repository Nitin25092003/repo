import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(45.0),
          bottomRight: Radius.circular(45.0),
        ),
        child: Image.asset(
          'assets/images/welcome_bg.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
