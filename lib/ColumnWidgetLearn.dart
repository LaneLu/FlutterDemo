import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "布局练习",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column布局练习"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
          crossAxisAlignment: CrossAxisAlignment.center,
          //cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，
          children: <Widget>[
            Text('I am JSPang'),
            Text('my website is jspang.com'),
            Text('I love coding'),
          ],
        ),
      ),
    );
  }
}