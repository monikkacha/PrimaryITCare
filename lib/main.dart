import 'package:flutter/material.dart';
import 'package:testing/global.dart';
import 'package:testing/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo IT Primary Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo IT Primary Care'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController numberController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Enter number under 25 in below input"),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: numberController,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                  color: Colors.blue,
                  onPressed: () => openSecondScreen(),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void openSecondScreen() {
    var numberString = numberController.text;

    if (numberString.isEmpty) {
      Global.showSnackBar(message: "input can not be empty", context: context);
      return;
    }

    var number = Global.convertStringToInt(numberString);
    if (number == 0) {
      Global.showSnackBar(
          message: "Number can not be less than 1", context: context);
      return;
    }

    if (number > 25) {
      Global.showSnackBar(
          message: "Number can not be more than 25", context: context);
      return;
    }

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(number),
        ));
  }
}
