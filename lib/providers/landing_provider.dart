import 'package:flutter/material.dart';

class LandingProvider with ChangeNotifier {
  int _slideIndex = 0;
  int get slideIndex => _slideIndex;
  String _slideTitle = "Landing Page";
  String get slideTitle => _slideTitle;

  setSlideIndex(int value) {
    _slideIndex = value;
    notifyListeners();
  }

  setSlideTitle(String value) {
    _slideTitle = value;
    notifyListeners();
  }
}
