import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState()=>  MyAppState();
}


class MyAppState extends State<MyApp> {

  String _value = "Hello World";

  void _onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name Here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(_value),
            new RaisedButton(
              onPressed: _onPressed,
              child: new Text("CLICK Me")
            ),
            new FlatButton(
              onPressed: _onPressed,
              child: new Text("Click Me"),
            )
          ],
        ),
      ),
    ));
  }
}


