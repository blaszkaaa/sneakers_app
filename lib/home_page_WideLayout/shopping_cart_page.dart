import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sneakers_app/util/my_cart.dart';

import '../util/newest_shoes.dart';

class ShopingCartPage extends StatefulWidget {
  const ShopingCartPage({Key? key}) : super(key: key);

  @override
  State<ShopingCartPage> createState() => _ShopingCartPageState();
}

class _ShopingCartPageState extends State<ShopingCartPage> {
  String name = NewShoes.shoesName;
  String model = NewShoes.shoesModel;
  String image = NewShoes.shoesImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Column(
            children: [
              MyCart(
                shoeName: name,
                shoeModel: model,
                shoeImage: image,
                shoeAmount: "1",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
