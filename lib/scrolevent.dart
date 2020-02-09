import 'package:flutter/material.dart';

class ScrollEvent with ChangeNotifier {
  bool _isScrolling;
  ScrollEvent(this._isScrolling);
  get isScrolling => _isScrolling;
  set isScrolling(bool scrollState) {
    _isScrolling = scrollState;
    notifyListeners();
  }
}
