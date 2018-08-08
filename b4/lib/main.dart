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

  int _val = 0;

  void _add() {
    setState(() {
      _val++;
    });
  }

  void _subtract() {
    setState(() {
          _val--;
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
            new Text("Value is =  ${_val}"),
            new IconButton(
              icon: new Icon(Icons.add),
              onPressed: _add,),
            new IconButton(
              icon: new Icon(Icons.remove),
              onPressed: _subtract,
            )
            
          ],
        ),
      ),
    ));
  }
}


