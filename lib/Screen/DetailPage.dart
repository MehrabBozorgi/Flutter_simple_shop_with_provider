import 'package:flutter/material.dart';
import '../Model/Product.dart';
import '../Widgets/CartButtonWidget.dart';
import '../Widgets/Kconst.dart';
import '../Widgets/RoundedButtonWidget.dart';

class DetailPage extends StatelessWidget {
  final Product product;
//http://192.168.1.51/toplearn_shop/connect.php/?action=register_user
  const DetailPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Provider'),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart_sharp,
                color: Colors.grey[600],
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                child: Image(
                  image: NetworkImage(
                    product.url,
                  ),
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: product.id,
                child: Text(
                  product.title,
                  style: kTitleStyle,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.albumId.toString(),
                  style: kTitleStyle,
                ),
              ),
            ),
            RoundedButtonWidget(),
            CartButtonWidget(),
          ],
        ),
      ),
    );
  }
}
