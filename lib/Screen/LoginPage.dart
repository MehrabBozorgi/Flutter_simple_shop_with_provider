import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/AuthProvider.dart';
import 'package:flutter_app_provider_toplearn/Screen/HomePage.dart';
import 'package:flutter_app_provider_toplearn/Widgets/InputFieldWidget.dart';
import 'package:flutter_app_provider_toplearn/Widgets/PurpleButtonWidget.dart';
import 'package:flutter_app_provider_toplearn/Widgets/QuestionTextWidget.dart';
import 'package:provider/provider.dart';

import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    final authRequest = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.skip_next,
                    color: Colors.purple,size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.only(top: 100, right: 20, left: 20),
              child: Image.network('https://www.tampil.id/assets/flat-ui/images/illust/Login-img.png',height: 230,),
            ),
            InputFieldWidget(
              hintText: 'UserName',
              icon: Icons.person,
              onChange: (value) {
                _username = value;
              },
              type: TextInputType.text,
              secure: false,
            ),
            InputFieldWidget(
              hintText: 'Password',
              icon: Icons.lock,
              onChange: (value) {
                _password = value;
              },
              type: TextInputType.visiblePassword,
              secure: true,
            ),
            PurpleButtonWidget(
              text: 'Login',
              colour: Colors.purple[700],
              onPress: () {
                authRequest.LoginRequest(_username, _password);

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HomePage(),
                //   ),
                // );
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
