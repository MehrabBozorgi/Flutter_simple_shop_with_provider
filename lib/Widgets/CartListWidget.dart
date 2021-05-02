import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/CartProvider.dart';

class CartListWidget extends StatelessWidget {
  final CartProvider cart;

  const CartListWidget({this.cart});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cart.productItem.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 8,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 8,
                  child: Text(
                    //دستور round صفر اخر double هارو پاک میکنه
                    'Price :${cart.item[index].price.round()} ',
                    style: TextStyle(
                        fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 8,
                  child: Text(
                    //تعداد نوشته شده توی پرانتز مقداری نیستش
                    'Count :${cart.productItem[index]['tedad']} ',
                    style: TextStyle(
                        fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 2,
                  //عکس محصول رو نشون میده
                  child: Image.network(
                    cart.item[index].url,
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
