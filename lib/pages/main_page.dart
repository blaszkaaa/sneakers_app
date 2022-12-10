import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                      backgroundColor: Color.fromARGB(255, 172, 169, 169),
                      child: Image.asset("images/avatar.jpg"),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 65),
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
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Icon(Icons.settings),
                  ),
                )
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
        ],
      ),
    );
  }
}
