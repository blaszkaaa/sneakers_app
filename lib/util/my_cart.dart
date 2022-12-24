import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  final String shoeName;
  final String shoeModel;
  final String shoeImage;
  final String shoeAmount;

  MyCart({
    required this.shoeName,
    required this.shoeModel,
    required this.shoeImage,
    required this.shoeAmount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 269,
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              alignment: Alignment.center,
              height: 109,
              color: Color.fromARGB(255, 248, 248, 248),
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
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Amount: ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                shoeAmount,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
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
          SizedBox(
            width: 269,
            height: 30,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Icon(Icons.delete_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
