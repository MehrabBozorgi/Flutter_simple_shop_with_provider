import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Widgets/PurpleButtonWidget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartList(),
          Container(
            margin: EdgeInsets.only(top: 270, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Count',
                  style: TextStyle(
                      fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                ),
                Text(
                  'TotalCount',
                  style: TextStyle(
                      fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: PurpleButtonWidget(
                colour: Colors.purple, onPress: () {}, text: 'Pay'),
          ),
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 1,
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
                    'Price',
                    style: TextStyle(
                        fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 8,
                  child: Text(
                    'Count',
                    style: TextStyle(
                        fontSize: 20, height: 3, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 2,
                  child: Image.asset(
                    'pic2.png',
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
