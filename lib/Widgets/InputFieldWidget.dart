import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged onChange;

  final TextInputType type;
  final bool secure;


  const InputFieldWidget({
    @required this.hintText,
    @required this.icon,
    @required this.onChange,

    @required this.type,
    @required this.secure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
      child: TextFormField(

        obscureText: secure,
        onChanged: onChange,

        cursorColor: Colors.purple,
        keyboardType: type,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.purple,
            ),
            border: InputBorder.none,
            hintText: hintText),
      ),
    );
  }
}
