import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int selectedNavbar = 0;

  void changeSelectedNavBar(int index) {
    selectedNavbar = index;
    notifyListeners();
  }
}
