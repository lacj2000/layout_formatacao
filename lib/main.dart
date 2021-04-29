import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildContainer('Container 1', Colors.red),
              SizedBox(
                height: 10,
              ),
              buildContainer('Container 2', Colors.amber),
              SizedBox(
                height: 10,
              ),
              buildContainer('Container 3', Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  buildContainer(String s, MaterialColor color) {
    return Container(
      width: 100,
      height: 100,
      child: Text(s),
      color: color,
    );
  }
}
