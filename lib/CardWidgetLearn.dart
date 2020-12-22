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
        title: Text("Card布局练习"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: new Text(
                  '吉林省吉林市昌邑区',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: new Text('技术胖:1513938888'),
                leading: new Icon(
                  Icons.account_box,
                  color: Colors.lightBlue,
                ),
              ),
              new Divider(),
              ListTile(
                title: new Text(
                  '北京市海淀区中国科技大学',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: new Text('胜宏宇:1513938888'),
                leading: new Icon(
                  Icons.account_box,
                  color: Colors.lightBlue,
                ),
              ),
              new Divider(),
              ListTile(
                title: new Text(
                  '河南省濮阳市百姓办公楼',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: new Text('JSPang:1513938888'),
                leading: new Icon(
                  Icons.account_box,
                  color: Colors.lightBlue,
                ),
              ),
              new Divider(),
            ],
          ),
        ),
      ),
    );
  }
}