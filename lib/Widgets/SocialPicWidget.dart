import 'package:flutter/material.dart';

class SocialPicWidget extends StatelessWidget {
  final String img;

  const SocialPicWidget({@required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.purple[100],
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Image.asset(
        img,
        height: 30,
        width: 30,
      ),
    );
  }
}
