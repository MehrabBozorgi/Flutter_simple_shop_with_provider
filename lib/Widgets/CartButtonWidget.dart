import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Model/Product.dart';
import 'package:flutter_app_provider_toplearn/Provider/CartProvider.dart';
import 'package:flutter_app_provider_toplearn/Provider/CounterProvider.dart';
import 'package:provider/provider.dart';

class CartButtonWidget extends StatelessWidget {
  final Product product;

  const CartButtonWidget({this.product});

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
      //بع نعداد پروایدری که نیاز داریم عدد consumer میره بالا
      child: Consumer2<CartProvider, CounterProvider>(
        builder: (context, cart, count, _) {
          return InkWell(
            onTap: () {
              cart.addToCart(product.title, count.count, context);
            },
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
        },
      ),
    );
  }
}
