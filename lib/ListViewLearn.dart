import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView Widget",
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListView组件练习"),
          ),
          body: ListView(
            children: <Widget>[
              // ListTile(
              //   leading: Icon(Icons.ac_unit),
              //   title: Text("ac_unit"),
              // ),
              // ListTile(
              //   leading: Icon(Icons.access_alarm),
              //   title: Text("access_alarm"),
              // ),
              // ListTile(
              //   leading: Icon(Icons.add_a_photo),
              //   title: Text("add_a_photo"),
              // ),
              // ListTile(
              //   leading: Icon(Icons.add_alarm),
              //   title: Text("add_alarm"),
              // ),
              Image.network(
                  "https://uploadzpbz.wujinjin.com/index/f5c9d06b4c68d7bd26c955da1698c5ba.jpg"),
              Image.network(
                  "https://uploadzpbz.wujinjin.com/index/c8939c5d21ef5b90dfae55ac336b2e10.jpg"),
              Image.network(
                  "https://uploadzpbz.wujinjin.com/index/e48df0d17910ecc06935244657c4859b.jpg"),
              Image.network(
                  "https://uploadzpbz.wujinjin.com/index/f0e071ef1079522fb655061d7a697ded.jpg"),
            ],
            padding: EdgeInsets.all(10.0),
          )),
    );
  }
}