import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int _currPage = 0;

  int get currPage => _currPage;

  set setCurrPage(int curr) {
    _currPage = curr;
    notifyListeners();
  }
}
