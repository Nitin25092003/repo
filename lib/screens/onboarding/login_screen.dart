import 'package:flutter/material.dart';
import 'package:makers_seller_app/widgets/common/famo_elevatedbutton.dart';
import 'package:makers_seller_app/widgets/common/famo_textformfield.dart';

class LoginScreen extends StatefulWidget {
  final TabController tabController;
  const LoginScreen({super.key, required this.tabController});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passwordVisibility = true;

  void _switchToRegistrationTab() {
    if (widget.tabController.index != 1) {
      widget.tabController.animateTo(1);
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24.05,
                ),
                const Text(
                  " Email",
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
                  " Password",
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
                  hintText: " Password",
                  obscureText: passwordVisibility,
                  isExtraValidation: true,
                  validate: (password) {
                    if (password.length < 6) {
                      return "enter at least 6 digit password";
                    }
                    return null;
                  },
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
                  height: 9,
                ),
                Container(
                  height: 19,
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      // Navigate to forgot password screen
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32.5,
                ),
                FamoElevatedButton(text: "Log in", onPressed: () {}),
                const SizedBox(
                  height: 24,
                ),
                FamoElevatedButton(
                  text: "Join us",
                  onPressed: () {
                    _switchToRegistrationTab();
                  },
                  color: Colors.white,
                  textColor: const Color.fromRGBO(86, 110, 217, 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(child: Text("Don't have an account yet?"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
