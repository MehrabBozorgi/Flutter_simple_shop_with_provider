import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final Function onPress;

  const QuestionText({@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don`t have Account?',
          style: TextStyle(
            color: Colors.purple[500],
            fontSize: 12,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: onPress,
          child: Text(
            'SingUp',
            style: TextStyle(
                color: Colors.purple[500],
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}