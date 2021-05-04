import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/CounterProvider.dart';
import 'package:provider/provider.dart';

class RoundedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            count.removeCount();
          },
        ),
        SizedBox(
          width: 10,
        ),
        Text(count.count.toString()),
        SizedBox(
          width: 10,
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            count.addCount();
          },
        ),
      ],
    );
  }
}
