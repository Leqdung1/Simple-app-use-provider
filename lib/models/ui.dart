import 'package:flutter/material.dart';

class Ui with ChangeNotifier {
  double _fontSize = 0.5;

  set fontSize(newvalue) {
    _fontSize = newvalue;
    notifyListeners();
  }

  double get fontSize => _fontSize * 30;
  // ignore: non_constant_identifier_names
  double get SlideFontSize => _fontSize;

  
}
