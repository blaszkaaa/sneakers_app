// ignore_for_file: non_constant_identifier_names

import 'package:sneakers_app/util/newest_shoes.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddShoe {
  List Shoes = [];

  final _mybox = Hive.box("cart");

  var shoeModel;
  var shoeImage;

  void putShoe() {
    Shoes = _mybox.get(1);
  }

  void addShoe() {
    _mybox.put(1, ["$shoeModel", "$shoeImage"]);
  }
}
