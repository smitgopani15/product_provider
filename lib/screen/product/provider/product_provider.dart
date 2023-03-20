import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List imageList = [
    "assets/images/product/1.png",
    "assets/images/product/2.png",
    "assets/images/product/3.png",
    "assets/images/product/4.png",
    "assets/images/product/5.png",
    "assets/images/product/6.png",
    "assets/images/product/7.png",
  ];
  List nameList = [
    "Vagabond sack",
    "Stella sunglasses",
    "Whitney belt",
    "Garden strand",
    "Strut earrings",
    "Varsity socks",
    "Weave keyring",
  ];
  List priceList = [
    "120",
    "58",
    "35",
    "98",
    "34",
    "12",
    "16",
  ];
}
