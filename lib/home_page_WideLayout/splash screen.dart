// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';
import 'package:flutter_responsive/flutter_responsive.dart';
import 'package:sneakers_app/home_page_WideLayout/login_page.dart';

class SplashScreenWide extends StatefulWidget {
  const SplashScreenWide({Key? key}) : super(key: key);

  @override
  State<SplashScreenWide> createState() => _SplashScreenWideState();
}

class _SplashScreenWideState extends State<SplashScreenWide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "images/but.png",
            scale: 1.4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Just do it with",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      " Nike",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "Get access to more than 1000 nike shoes\n also another brands with %20 off",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SlideAction(
              trackBuilder: (context, state) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.grey[100],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 38,
                          color: Colors.grey[400],
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 48,
                          color: Colors.grey[400],
                        ),
                        const Text(
                          "Slide to start shopping",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              thumbBuilder: (context, state) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 162, 22),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.chevron_right_rounded,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                );
              },
              action: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
                print("2");
              },
            ),
          ),
        ],
      ),
    );
  }
}
