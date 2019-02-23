import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyNewApp());

class MyNewApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Welcome World"),
          backgroundColor: Colors.amber,
          brightness: Brightness.light,
          textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.italic)),
        ),
        body: new Center(
          child: new Text("Hellow World"),
        ),
      )
    );
  }
}

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
           // child: new Text(WordPair.random().asCamelCase),
            child: new RandomWordsState(),
          ),
        ),
    );
  }
}

class RandomWordsState extends StatefulWidget {
  @override
  _RandomWordsStateState createState() => _RandomWordsStateState();
}

class _RandomWordsStateState extends State<RandomWordsState> {

  @override
  Widget build(BuildContext context) {
    final wordPair=WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

