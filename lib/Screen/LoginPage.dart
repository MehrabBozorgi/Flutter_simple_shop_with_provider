import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Widgets/LoginInputFieldWidget.dart';
import 'package:flutter_app_provider_toplearn/Widgets/PurpleButtonWidget.dart';
import 'package:flutter_app_provider_toplearn/Widgets/QuestionTextWidget.dart';

import 'HomePage.dart';
import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
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
            LoginInputFieldWidget(
              hintText: 'UserName',
              icon: Icons.person,
              onChange: (value) {},
              type: TextInputType.text,
              secure: false,
            ),
            LoginInputFieldWidget(
              hintText: 'Password',
              icon: Icons.lock,
              onChange: (value) {},
              type: TextInputType.visiblePassword,
              secure: true,
            ),
            PurpleButtonWidget(
              text: 'Login',
              colour: Colors.purple[700],
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            QuestionText(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
