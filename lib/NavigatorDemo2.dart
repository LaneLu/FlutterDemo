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