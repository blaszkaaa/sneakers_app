import 'package:flutter/material.dart';
import 'package:sneakers_app/util/my_cart.dart';
import 'package:sneakers_app/util/newest_shoes.dart';

class ShopingCartPageUltra extends StatefulWidget {
  const ShopingCartPageUltra({Key? key}) : super(key: key);

  @override
  State<ShopingCartPageUltra> createState() => _ShopingCartPageUltraState();
}

class _ShopingCartPageUltraState extends State<ShopingCartPageUltra> {
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
