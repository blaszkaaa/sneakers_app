import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ShopingCartPage extends StatefulWidget {
  const ShopingCartPage({Key? key}) : super(key: key);

  @override
  State<ShopingCartPage> createState() => _ShopingCartPageState();
}

class _ShopingCartPageState extends State<ShopingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
