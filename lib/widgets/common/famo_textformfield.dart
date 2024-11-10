import 'package:flutter/material.dart';

class FamoTextFormField extends StatelessWidget {
  const FamoTextFormField(
      {super.key,
      required this.textEditingController,
      this.obscureText = false,
      this.textInputType = TextInputType.text,
      this.isExtraValidation = false,
      this.validate,
      required this.hintText,
      this.maxLines = 1,
      this.iconVisibility = false,
      this.iconFunction,
      this.passwordVisibility = false});

  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final String? Function(String)? validate;
  final bool isExtraValidation;
  final int maxLines;
  final bool iconVisibility;
  final bool passwordVisibility;
  final Function()? iconFunction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      keyboardType: textInputType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter a valid $hintText";
        }
        if (isExtraValidation && validate != null) {
          return validate!(value);
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        constraints: const BoxConstraints(minHeight: 48),
        isDense: true,
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        suffixIcon: iconVisibility
            ? IconButton(
                icon: Icon(
                  passwordVisibility ? Icons.visibility_off : Icons.visibility,
                ),
                color: Colors.black,
                onPressed: iconFunction,
              )
            : null,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(170, 170, 170, 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
              const BorderSide(color: Color.fromRGBO(17, 48, 63, 1), width: 2),
        ),
      ),
    );
  }
}
