import 'package:flutter/material.dart';
import 'package:makers_seller_app/widgets/common/famo_elevatedbutton.dart';
import 'package:makers_seller_app/widgets/common/famo_textformfield.dart';

class RegistrationScreen extends StatefulWidget {
  final TabController tabController;

  const RegistrationScreen({super.key, required this.tabController});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final testController = TextEditingController();
  bool passwordVisibility = true;
  bool confirmPasswordVisibility = true;

  void _switchToLoginTab() {
    if (widget.tabController.index != 0) {
      widget.tabController.animateTo(0);
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "Your email",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Open Sans",
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  FamoTextFormField(
                    textEditingController: emailController,
                    hintText: "@email.com",
                    isExtraValidation: true,
                    validate: (email) {
                      if (email.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                              .hasMatch(email)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Enter password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Open Sans",
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  FamoTextFormField(
                    textEditingController: passwordController,
                    hintText: "Password",
                    obscureText: passwordVisibility,
                    iconFunction: () {
                      debugPrint(passwordVisibility.toString());
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    iconVisibility: true,
                    passwordVisibility: passwordVisibility,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Confirm password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Open Sans",
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  FamoTextFormField(
                    textEditingController: confirmPasswordController,
                    hintText: " Confirm Password",
                    obscureText: confirmPasswordVisibility,
                    iconFunction: () {
                      debugPrint(confirmPasswordVisibility.toString());
                      setState(() {
                        confirmPasswordVisibility = !confirmPasswordVisibility;
                      });
                    },
                    iconVisibility: true,
                    passwordVisibility: confirmPasswordVisibility,
                  ),
                  const SizedBox(
                    height: 26.73,
                  ),
                  FamoElevatedButton(
                    onPressed: () {
                      //Navigate to settings page
                    },
                    text: "Register",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FamoElevatedButton(
                    text: "Log in",
                    onPressed: () {
                      _switchToLoginTab();
                    },
                    color: Colors.white,
                    textColor: const Color.fromRGBO(86, 110, 217, 1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(child: Text("Already have an account?"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
