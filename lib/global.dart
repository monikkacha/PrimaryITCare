import 'dart:math';

import 'package:flutter/material.dart';

class Global {


  static int convertStringToInt(var numberString) {
    return int.parse(numberString);
  }

  static void showSnackBar({@required var message, @required var context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static int getRandomNumber (var number) {
    Random rnd;
    int r = -1;
    int min = 0;
    int max = number;
    rnd = new Random();
    r = min + rnd.nextInt(max - min);
    return r;
  }
}
