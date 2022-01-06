import 'package:flutter/material.dart';

class Counter with ChangeNotifier{

  int counter = 0;
  int getCount() => counter;

  void increment(){
    counter++;
    notifyListeners();
  }

  void reset(){
    counter = 0;
    notifyListeners();
  }

}

