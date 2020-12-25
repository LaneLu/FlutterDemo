import 'package:flutter/material.dart';

void main() {
  runApp(CommonApp());
}

//app
class CommonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "布局DEMO",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: ListView(
        children: [
          Image.asset(
            "images/lake.jpg",
            fit: BoxFit.cover,
          ),
          TitleSection(),
          buttonSection(),
          TextSection(),
        ],
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "标题111111111111111111111111",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "描述2222222222222222222222222222",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
          ),
          FavoriteWidget(),
        ],
      ),
    );
  }
}

class buttonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.lightBlue,
                ),
                Text(
                  "CALL",
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.near_me,
                  color: Colors.lightBlue,
                ),
                Text(
                  "ROUTE",
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.lightBlue,
                ),
                Text(
                  "SHARE",
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }
}
