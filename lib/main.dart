import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "Welcome To Flutter",
        home:  Scaffold(
          appBar:  AppBar(
            title:  Text("Wellcome To Flutter"),
          ),
          body:  Center(
            child: new Text("Hellow World"),
          ),
        ),
    );
  }
}
