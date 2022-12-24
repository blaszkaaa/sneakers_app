// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sneakers_app/home_pages_UltraWideLayout/home_page.dart';
import 'package:sneakers_app/home_pages_UltraWideLayout/settings_page.dart';
import 'package:sneakers_app/home_pages_UltraWideLayout/shopping_cart_page.dart';

class MainPageUltra extends StatefulWidget {
  const MainPageUltra({Key? key}) : super(key: key);

  @override
  State<MainPageUltra> createState() => _MainPageUltraState();
}

class _MainPageUltraState extends State<MainPageUltra> {
  var index = 0;
  final _buildBody = <Widget>[
    const HomePageUltra(),
    const ShopingCartPageUltra(),
    const SettingsPageUltra()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(45, 255, 255, 255),
        animationDuration: const Duration(milliseconds: 500),
        buttonBackgroundColor: const Color.fromARGB(255, 249, 178, 1),
        animationCurve: Curves.fastLinearToSlowEaseIn,
        height: 50,
        color: const Color.fromARGB(255, 249, 178, 1),
        items: const <Widget>[
          Icon(
            Icons.home_outlined,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: (x) {
          setState(() {
            index = x;
          });
        },
      ),
      backgroundColor: Colors.white,
      body: _buildBody[index],
    );
  }
}
