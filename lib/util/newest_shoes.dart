// ignore_for_file: unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';

class NewShoes extends StatelessWidget {
  final String shoeName;
  final String shoeModel;
  final String shoeImage;
  static String shoesName = '';
  static String shoesModel = '';
  static String shoesImage = '';
  const NewShoes({
    Key? key,
    required this.shoeName,
    required this.shoeModel,
    required this.shoeImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Container(
            height: 109,
            color: const Color.fromARGB(255, 248, 248, 248),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          shoeName,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          shoeModel,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () async {
                              print("$shoeModel");
                              shoesName = shoeModel;
                              shoesModel = shoeModel;
                              shoesImage = shoeImage;
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 249, 178, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Text("Add to"),
                                Icon(Icons.shopping_bag_outlined),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  shoeImage,
                  scale: 1.5,
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
