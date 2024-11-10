import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 45,
                  color: const Color.fromRGBO(65, 91, 198, 1),
                  child: const Center(
                    child: Text(
                      'FAMO',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 45,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'MAKER',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Seller',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(62, 28, 150, 1),
                ),
              ),
              TextSpan(
                text: ' Portal',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(17, 48, 63, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
