import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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

