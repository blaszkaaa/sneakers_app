// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sneakers_app/pages/home_page.dart';
import 'package:sneakers_app/pages/shopping_cart_page.dart';
import 'package:sneakers_app/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(45, 255, 255, 255),
        animationDuration: Duration(milliseconds: 500),
        buttonBackgroundColor: Color.fromARGB(255, 249, 178, 1),
        animationCurve: Curves.fastLinearToSlowEaseIn,
        height: 50,
        color: Color.fromARGB(255, 249, 178, 1),
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
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      backgroundColor: Colors.white,
      body: null,
    );
  }
}
