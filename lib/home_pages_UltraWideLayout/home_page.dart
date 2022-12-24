import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sneakers_app/util/newest_shoes.dart';

class HomePageUltra extends StatelessWidget {
  HomePageUltra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 216, 216, 216),
                    child: Icon(
                      Icons.dashboard,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(255, 172, 169, 169),
                    child: Image.asset("images/avatar.jpg"),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Form(
                  child: Container(
                    width: 290,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Search your shoe",
                          prefixIcon: Icon(Icons.circle_outlined),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 249, 178, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Icon(Icons.settings),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/ad.jpg",
                scale: 0.86,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Newest nike shoes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "See more",
                  style: TextStyle(
                    color: Color.fromARGB(255, 249, 178, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 109,
          child: Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                NewShoes(
                  shoeName: "Nike",
                  shoeModel: "Nike Air Max",
                  shoeImage: "images/shoe.jpg",
                ),
                NewShoes(
                  shoeName: "Nike",
                  shoeModel: "Nike Air Force 1",
                  shoeImage: "images/shoe2.jpg",
                ),
                NewShoes(
                  shoeName: "Nike",
                  shoeModel: "Nike Streakfly",
                  shoeImage: "images/shoe3.jpg",
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  "See more",
                  style: TextStyle(
                    color: Color.fromARGB(255, 249, 178, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 109,
          child: Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                NewShoes(
                  shoeName: "Nike",
                  shoeModel: "Nike Streakfly",
                  shoeImage: "images/shoe3.jpg",
                ),
                NewShoes(
                  shoeName: "Nike",
                  shoeModel: "Nike Air Force 1",
                  shoeImage: "images/shoe2.jpg",
                ),
                NewShoes(
                  shoeName: "Nike",
                  shoeModel: "Nike Air Max",
                  shoeImage: "images/shoe.jpg",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
