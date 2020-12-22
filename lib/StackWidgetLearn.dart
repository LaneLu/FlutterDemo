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
        title: Text("Stack布局练习"),
      ),
      body: Center(
        child: Stack(
          alignment: FractionalOffset(0.5, 0.8),
          children: [
            CircleAvatar(
              //圆形头像
              backgroundImage: NetworkImage(
                  "https://staticzpbz.wujinjin.com/img/common/logo.png"),
              radius: 100.0,
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Text("测试1"),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Text("测试2"),
            ),
            Positioned(
              top: 10.0,
              left: 15.0,
              child: Text("测试3"),
            )
          ],
        ),
      ),
    );
  }
}