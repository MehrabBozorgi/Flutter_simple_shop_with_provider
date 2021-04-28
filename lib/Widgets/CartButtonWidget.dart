import 'package:flutter/material.dart';

class CartButtonWidget extends StatelessWidget {
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
