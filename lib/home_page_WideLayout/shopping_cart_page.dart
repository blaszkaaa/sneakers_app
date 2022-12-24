import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sneakers_app/util/my_cart.dart';

class ShopingCartPage extends StatefulWidget {
  const ShopingCartPage({Key? key}) : super(key: key);

  @override
  State<ShopingCartPage> createState() => _ShopingCartPageState();
}

class _ShopingCartPageState extends State<ShopingCartPage> {
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
                shoeName: "Nike",
                shoeModel: "Nike Air Max",
                shoeImage: "images/shoe.jpg",
                shoeAmount: "1",
              ),
              MyCart(
                shoeName: "Nike",
                shoeModel: "Nike Air Force 1",
                shoeImage: "images/shoe2.jpg",
                shoeAmount: "4",
              ),
              MyCart(
                shoeName: "Nike",
                shoeModel: "Nike Streakfly",
                shoeImage: "images/shoe3.jpg",
                shoeAmount: "2",
              ),
              MyCart(
                shoeName: "Nike",
                shoeModel: "Nike Air Max",
                shoeImage: "images/shoe.jpg",
                shoeAmount: "1",
              ),
              MyCart(
                shoeName: "Nike",
                shoeModel: "Nike Air Force 1",
                shoeImage: "images/shoe2.jpg",
                shoeAmount: "5",
              ),
              MyCart(
                shoeName: "Nike",
                shoeModel: "Nike Streakfly",
                shoeImage: "images/shoe3.jpg",
                shoeAmount: "1",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
