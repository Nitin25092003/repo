import 'package:flutter/material.dart';
import 'package:makers_seller_app/route/export_screens.dart';
import 'package:makers_seller_app/widgets/common/famo_elevatedbutton.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
      child: Column(
        children: [
          FamoElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const OnboardingTabs(
                    index: 0,
                  ),
                ),
              );
            },
            text: "Log in",
            textColor: const Color.fromRGBO(255, 255, 255, 1),
          ),
          const SizedBox(height: 20),
          FamoElevatedButton(
            text: "Become a seller today",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const OnboardingTabs(
                    index: 1,
                  ),
                ),
              );
            },
            color: const Color.fromRGBO(255, 255, 255, 1),
            textColor: const Color.fromRGBO(86, 110, 217, 1),
          ),
        ],
      ),
    );
  }
}
