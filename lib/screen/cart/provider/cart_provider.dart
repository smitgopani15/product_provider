import 'package:flutter/cupertino.dart';

class CartProvider extends ChangeNotifier {
  DateTime currentDateTime = DateTime.now();

  void changedatetime(DateTime value) {
    currentDateTime = value;
    notifyListeners();
  }
}
