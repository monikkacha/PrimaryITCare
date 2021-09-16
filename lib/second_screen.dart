import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/global.dart';
import 'package:testing/global_widgets.dart';

enum STATE { VISIBLE, INVISIBLE, COLORED }

class SecondScreen extends StatefulWidget {
  final number;

  const SecondScreen(this.number, {Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState(this.number);
}

class _SecondScreenState extends State<SecondScreen> {
  var isVisible = [];
  var colorList = [];

  final int number;
  int randomNumber = -1;

  _SecondScreenState(this.number);

  @override
  void initState() {
    super.initState();
    initalizeArray();
  }

  void initalizeArray() {
    randomNumber = Global.getRandomNumber(number);
    for (var i = 0; i < 25; i++) {
      if (i == randomNumber) {
        isVisible.add(STATE.COLORED);
        colorList.add(Colors.blue);
      } else if (i < number) {
        isVisible.add(STATE.VISIBLE);
        colorList.add(Colors.grey);
      } else if (i >= number) {
        isVisible.add(STATE.INVISIBLE);
        colorList.add(Colors.grey);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 4.0,
              ),
              Row(
                children: [
                  GlobalWidgets.cube(
                      isVisible: isVisible[0],
                      color: colorList[0],
                      onTap: () => changeColor(0)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[1],
                      color: colorList[1],
                      onTap: () => changeColor(1)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[2],
                      color: colorList[2],
                      onTap: () => changeColor(2)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[3],
                      color: colorList[3],
                      onTap: () => changeColor(3)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[4],
                      color: colorList[4],
                      onTap: () => changeColor(4)),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  GlobalWidgets.cube(
                      isVisible: isVisible[5],
                      color: colorList[5],
                      onTap: () => changeColor(5)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[6],
                      color: colorList[6],
                      onTap: () => changeColor(6)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[7],
                      color: colorList[7],
                      onTap: () => changeColor(7)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[8],
                      color: colorList[8],
                      onTap: () => changeColor(7)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[9],
                      color: colorList[9],
                      onTap: () => changeColor(9)),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  GlobalWidgets.cube(
                      isVisible: isVisible[10],
                      color: colorList[10],
                      onTap: () => changeColor(10)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[11],
                      color: colorList[11],
                      onTap: () => changeColor(11)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[12],
                      color: colorList[12],
                      onTap: () => changeColor(12)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[13],
                      color: colorList[13],
                      onTap: () => changeColor(13)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[14],
                      color: colorList[14],
                      onTap: () => changeColor(14)),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  GlobalWidgets.cube(
                      isVisible: isVisible[15],
                      color: colorList[15],
                      onTap: () => changeColor(15)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[16],
                      color: colorList[16],
                      onTap: () => changeColor(16)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[17],
                      color: colorList[17],
                      onTap: () => changeColor(17)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[18],
                      color: colorList[18],
                      onTap: () => changeColor(18)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[19],
                      color: colorList[19],
                      onTap: () => changeColor(19)),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  GlobalWidgets.cube(
                      isVisible: isVisible[20],
                      color: colorList[20],
                      onTap: () => changeColor(20)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[21],
                      color: colorList[21],
                      onTap: () => changeColor(21)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[22],
                      color: colorList[22],
                      onTap: () => changeColor(22)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[23],
                      color: colorList[23],
                      onTap: () => changeColor(23)),
                  GlobalWidgets.cube(
                      isVisible: isVisible[24],
                      color: colorList[24],
                      onTap: () => changeColor(24)),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeColor(var tapNumber) {
    var oldColor = colorList[tapNumber];
    var newColor = Colors.green;

    if (oldColor == Colors.grey) {
      return;
    }

    if (oldColor == Colors.blue) {
      colorList[tapNumber] = newColor;
      randomNumber = Global.getRandomNumber(number);
      colorList[randomNumber] = Colors.blue;
      setState(() {});
    }
  }
}
