import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // List<String> items;
  //
  // MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: HomePage(items: List<String>.generate(50, (i) => "Item $i")),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> items;

  HomePage({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView动态列表"),
        ),
        body: ListView.builder(
            //动态生成列表
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
              );
            }));
  }
}
