import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

void main() {
  Util.checkDebugMode();
  runApp(MyStatefullApp());
}

class Util {
  static String url = "http:http:live";
  static String mode = "release";

  static checkDebugMode() {
    assert(() {
      mode = "debug";
      url = "http:http:debug";
      return true;
    }());
  }
}

class MyStatefullApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new _MyAppState(),
      theme: ThemeData(
          primarySwatch: Colors.amber,
          brightness: Brightness.light,
          accentColor: Colors.redAccent),
    );
  }
}

class _MyAppState extends StatefulWidget {
  @override
  __MyAppStateState createState() => __MyAppStateState();
}

class __MyAppStateState extends State<_MyAppState> {
  int incremenent = 0;

  Widget _bodyWidget() {
    return new Container(
      child: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text("Hellow World $incremenent"),
          new Text("This is ${Util.mode} Mode"),
          new FloatingActionButton(onPressed: _onClick,child: Icon(Icons.ac_unit),),
          new Text("${Util.url}"),
          new RaisedButton(onPressed: _onClick, child: new Text("Click me")),
        ],
      )),
    );
  }

  void _onClick() {
    setState(() {
      incremenent++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Welcome Flutter",
          textAlign: TextAlign.center,
        ),
      ),
      body: _bodyWidget(),
    );
  }
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome World"),
        backgroundColor: Colors.amber,
        brightness: Brightness.light,
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontStyle: FontStyle.italic)),
      ),
      body: new Center(
        child: new Text("Hellow World"),
      ),
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome To Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wellcome To Flutter"),
        ),
        body: Center(
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
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
