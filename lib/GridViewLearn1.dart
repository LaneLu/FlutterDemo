import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView练习'),
        ),
        body: GridView.count(
          //官方已经不推荐count+const这种写法，但是引用项目的老代码有可能这么写，做一个演示
          padding: const EdgeInsets.all(10.0),
          crossAxisCount: 3, //每行显示个数
          crossAxisSpacing: 10, //间距
          children: <Widget>[
            const Text(
              '单引号里面有单引号it\'s，必须在前面加反斜杠.',
            ),
            const Text(
              "双引号里面有单引号it's.",
            ),
            const Text('单引号里面有双引号，"hello world"'),
            const Text("双引号里面有双引号，\"hello world\""),
            const Text('我喜欢看书'),
            const Text('我喜欢吃火锅')
          ],
        ),
      ),
    );
  }
}