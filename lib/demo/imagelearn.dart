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
            child: Image.network(
              "https://staticzpbz.wujinjin.com/img/common/logo.png",
              fit: BoxFit.contain,//设置图片的挤压与拉伸等效果
              repeat: ImageRepeat.noRepeat,//设置图片重复
              color: Colors.redAccent,//设置要混合的颜色
              colorBlendMode: BlendMode.multiply,//设置混合模式
            ),
            width: 300.0,
            height: 500.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }

}