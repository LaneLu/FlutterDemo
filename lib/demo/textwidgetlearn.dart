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
          child: Text(
            "昨夜雨疏风骤，浓睡不消残酒。试问卷帘人，却道海棠依旧。知否，知否？应是绿肥红瘦。",
            textAlign: TextAlign.start, //设置文字对齐方式
            maxLines: 1, //最大行数
            overflow: TextOverflow.ellipsis, //省略号
            style: TextStyle(
              fontSize: 25.0, //设置文字大小
              color: Colors.redAccent, //设置文字颜色
              decoration: TextDecoration.underline, //设置下划线
              decorationStyle: TextDecorationStyle.solid, //设置下划线为实线
            ),
          ),
        ),
      ),
    );
  }
}
