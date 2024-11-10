import 'package:flutter/material.dart';

class FamoElevatedButton extends StatelessWidget {
  const FamoElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = const Color.fromRGBO(86, 110, 217, 1),
    this.textColor = Colors.white,
    this.size = 48,
    this.fontSize = 14,
  });

  final String text;
  final void Function() onPressed;
  final Color? color;
  final Color? textColor;
  final double size;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: textColor == const Color.fromRGBO(86, 110, 217, 1)
              ? const BorderSide(color: Color.fromRGBO(86, 110, 217, 1))
              : BorderSide(color: color!),
        ),
        minimumSize: Size(double.infinity, size),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize, color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
