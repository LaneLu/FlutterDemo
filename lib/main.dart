// // Copyright 2018 The Flutter team. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Widget titleSection = Container(
//       padding: const EdgeInsets.all(32),
//       child: Row(
//         children: [
//           Expanded(
//             /*1*/
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 /*2*/
//                 Container(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: Text(
//                     'Oeschinen Lake Campground',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'Kandersteg, Switzerland',
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           /*3*/
//           FavoriteWidget(),
//
//           // Icon(
//           //   Icons.star,
//           //   color: Colors.red[500],
//           // ),
//           // Text('41'),
//
//         ],
//       ),
//     );
//
//     Color color = Theme.of(context).primaryColor;
//
//     Widget buttonSection = Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildButtonColumn(color, Icons.call, 'CALL'),
//           _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//           _buildButtonColumn(color, Icons.share, 'SHARE'),
//         ],
//       ),
//     );
//
//     Widget textSection = Container(
//       padding: const EdgeInsets.all(32),
//       child: Text(
//         'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
//         'Alps. Situated 1,578 meters above sea level, it is one of the '
//         'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
//         'half-hour walk through pastures and pine forest, leads you to the '
//         'lake, which warms to 20 degrees Celsius in the summer. Activities '
//         'enjoyed here include rowing, and riding the summer toboggan run.',
//         softWrap: true,
//       ),
//     );
//
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter layout demo'),
//         ),
//         body: ListView(
//           children: [
//             Image.asset(
//               'images/lake.jpg',
//               width: 600,
//               height: 240,
//               fit: BoxFit.cover,
//             ),
//             titleSection,
//             buttonSection,
//             textSection,
//           ],
//         ),
//       ),
//     );
//   }
//
//   Column _buildButtonColumn(Color color, IconData icon, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: color),
//         Container(
//           margin: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// //收藏按钮
// class FavoriteWidget extends StatefulWidget {
//   @override
//   _FavoriteWidgetState createState() => _FavoriteWidgetState();
// }
//
// class _FavoriteWidgetState extends State<FavoriteWidget> {
//   bool _isFavorited = true;
//   int _favoriteCount = 41;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           padding: EdgeInsets.all(0),
//           child: IconButton(
//             padding: EdgeInsets.all(0),
//             alignment: Alignment.centerRight,
//             icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
//             color: Colors.red[500],
//             onPressed: _toggleFavorite,
//           ),
//         ),
//         SizedBox(
//           width: 18,
//           child: Container(
//             child: Text('$_favoriteCount'),
//           ),
//         ),
//       ],
//     );
//   }
//
//   void _toggleFavorite() {
//     setState(() {
//       if (_isFavorited) {
//         _favoriteCount -= 1;
//         _isFavorited = false;
//       } else {
//         _favoriteCount += 1;
//         _isFavorited = true;
//       }
//     });
//   }
//
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "导航演示02",
      home: ProductList(
          products:
              List.generate(20, (i) => Product("商品 $i", "这是一个商品详情，编号为$i"))),
    );
  }
}

class Product {
  final String title; //商品标题
  final String description; //商品描述
  Product(this.title, this.description);
}

//商品列表页
class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              //点击事件
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index])));
            },
          );
        },
      ),
    );
  }
}

//商品详情页
class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${product.title}"),
      ),
      body: Center(
        child: Text("${product.description}"),
      ),
    );
  }
}
