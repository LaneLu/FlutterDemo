import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView Widget",
        home: Scaffold(
            appBar: AppBar(
              title: Text("横向ListView组件练习"),
            ),
            body: Center(
              child: Container(
                height: 200.0,
                child: MyList(),
              ),
            )));
  }
}

class MyList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 200.0,
          color: Colors.redAccent,
        ),
        Container(
          width: 200.0,
          color: Colors.lightBlue,
        ),
        Container(
          width: 200.0,
          color: Colors.deepOrange,
        ),
        Container(
          width: 200.0,
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}