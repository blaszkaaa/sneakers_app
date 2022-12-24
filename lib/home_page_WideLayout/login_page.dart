// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:custom_input_text/custom_input_text.dart';
import 'package:easy_loading_button/easy_loading_button.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailCtrl = TextEditingController();
bool? emailValidation;

final passwordCtrl = TextEditingController();
bool? passwordValidation;

class _LoginPageState extends State<LoginPage> {
  onButtonPressed() async {
    await Future.delayed(const Duration(milliseconds: 3000), () => 42);
    return () {
      print("login");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Image.asset(
              "images/nike_logo.png",
              scale: 1.6,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 1, bottom: 14),
            child: Text(
              "Hey,\nLogin now.",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: const [
                Text(
                  "If you are new /",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Create New",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomInputText(
              placeholder: 'e-mail adress',
              keyboardType: TextInputType.emailAddress,
              icon: Icons.alternate_email_outlined,
              textController: emailCtrl,
              validation: emailValidation,
              backgroundColor: Colors.white,
              onfocusColor: Colors.orange,
              onChanged: (value) {
                setState(() {
                  emailValidation = validateEmail(value);
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomInputText(
              placeholder: 'password',
              icon: Icons.lock_outline_rounded,
              textController: passwordCtrl,
              isPassword: true,
              backgroundColor: Colors.white,
              onfocusColor: Colors.orange,
              validation: passwordValidation,
              onChanged: (value) {
                var passCtrl;
                if (passwordCtrl.text.length >= 8 &&
                    passwordCtrl.text == passCtrl.text) {
                  setState(() {
                    passwordValidation = true;
                  });
                } else {
                  setState(() {
                    passwordValidation = false;
                  });
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: const [
                Text(
                  "Forgot Passcode? /",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 100, right: 100),
            child: Center(
              child: EasyButton(
                type: EasyButtonType.elevated,
                idleStateWidget: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                loadingStateWidget: const CircularProgressIndicator(
                  strokeWidth: 3.0,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                ),
                useWidthAnimation: true,
                useEqualLoadingStateWidgetDimension: true,
                width: 250.0,
                height: 40.0,
                borderRadius: 4.0,
                elevation: 0.0,
                contentGap: 6.0,
                buttonColor: Colors.orange,
                onPressed: onButtonPressed,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Center(
              child: TextButton(
                onPressed: null,
                child: Text(
                  "Later",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
