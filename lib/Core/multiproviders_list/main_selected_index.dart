import 'package:flutter/foundation.dart';

class MainCurrentIndex extends ChangeNotifier {
  int _maincurrentIndex = 0;

  int get maincurrentIndex => _maincurrentIndex;

  void setIndex(int index) {
    _maincurrentIndex = index;
    notifyListeners();
  }
}
// class MainCurrentIndex extends ChangeNotifier {
//   int _maincurrentIndex = 0;

//   int get maincurrentIndex => _maincurrentIndex;

//   void setIndex(int index) {
//     _maincurrentIndex = index;
//     notifyListeners();
//   }
// }