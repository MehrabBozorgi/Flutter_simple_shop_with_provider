import 'package:flutter/material.dart';
class RoundedButtonWidget extends StatelessWidget {
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