import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/second_screen.dart';

class GlobalWidgets {
  static Widget cube(
      {@required var isVisible,
      @required var color,
      required VoidCallback onTap}) {
    var visibility = STATE.COLORED == isVisible || STATE.VISIBLE == isVisible;
    return Expanded(
        child: Visibility(
      visible: visibility,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Container(
            color: color,
            height: 40.0,
          ),
        ),
      ),
    ));
  }
}
