import 'package:flutter/material.dart';
import 'package:makers_seller_app/widgets/welcome/welcome_buttons.dart';
import 'package:makers_seller_app/widgets/welcome/welcome_image.dart';
import 'package:makers_seller_app/widgets/welcome/welcome_title.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeImage(),
            SizedBox(height: 60),
            WelcomeTitle(),
            SizedBox(height: 60),
            WelcomeButtons(),
          ],
        ),
      ),
    );
  }
}
