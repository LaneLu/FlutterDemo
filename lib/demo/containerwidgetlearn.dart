// // Copyright 2018 The Flutter team. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Widget",
      home: Scaffold(
        body: Center(
          child: Container(
            //容器组件
            child: Text(
              "Hello World",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            alignment: Alignment.topLeft,
            // color: Colors.lightBlue,
            //设置宽度
            width: 500.0,
            //设置高度
            height: 400.0,
            //设置内间距
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            //设置外间距
            margin: const EdgeInsets.all(10.0),
            //设置盒子
            decoration: BoxDecoration(
              //设置阴影
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightBlue, Colors.lightGreen, Colors.red]),
                //设置边框
                border: Border.all(color: Colors.black, width: 5.0)),
            // decoration: new BoxDecoration()
          ),
        ),
      ),
    );
  }
}

