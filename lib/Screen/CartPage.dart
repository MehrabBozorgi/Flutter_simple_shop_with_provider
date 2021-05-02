import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/CartProvider.dart';
import 'package:flutter_app_provider_toplearn/Widgets/CartListWidget.dart';
import 'package:flutter_app_provider_toplearn/Widgets/PurpleButtonWidget.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CartProvider>(context, listen: false);
    data.getToken();

    return Scaffold(
      appBar: AppBar(
        //
        automaticallyImplyLeading: false,
        //
        title: Text('Cart'),
        backgroundColor: Colors.black,
      ),
      body: Consumer(
        builder: (BuildContext context, cart, Widget child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //کارتی اون طرف تعریف کردیم رو با این پروارد اتصالش دادیم
                CartListWidget(cart: cart),
                Container(
                  margin: EdgeInsets.only(top: 270, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Count:${cart.totalPrice().round()}',
                        style: TextStyle(
                            fontSize: 18,
                            height: 3,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'TotalCount:${cart.totalTedad().round()}',
                        style: TextStyle(
                            fontSize: 18,
                            height: 3,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  child: PurpleButtonWidget(
                      colour: Colors.purple, onPress: () {}, text: 'Pay'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
