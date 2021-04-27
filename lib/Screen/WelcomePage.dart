import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Widgets/PurpleButtonWidget.dart';


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, right: 20, left: 20),
              child: Image.asset('wellcom.png'),
            ),
            PurpleButtonWidget(
              text: 'Login',
              colour: Colors.purple[700],
              onPress: () {},
            ),PurpleButtonWidget(
              text: 'SingUp',
              colour: Colors.purple[700],
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}


