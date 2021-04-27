import 'package:flutter/material.dart';
class PurpleButtonWidget extends StatelessWidget {
  final Color colour;
  final Function onPress;
  final String text;

  const PurpleButtonWidget({
    @required this.colour,
    @required this.onPress,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: colour,
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          onPressed: onPress,
          child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),

          minWidth: 270,
        ),
      ),
    );
  }
}