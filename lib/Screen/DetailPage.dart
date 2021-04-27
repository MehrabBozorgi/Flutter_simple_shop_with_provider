import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Model/Product.dart';
import 'package:flutter_app_provider_toplearn/Widgets/Kconst.dart';

class DetailPage extends StatelessWidget {
  final Product product;

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
            RoundedButton(),
            CartButton()
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        Text('1'),
        SizedBox(
          width: 10,
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,

      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.red[700],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Add'),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.shopping_basket_rounded),
        ],
      ),
    );
  }
}
