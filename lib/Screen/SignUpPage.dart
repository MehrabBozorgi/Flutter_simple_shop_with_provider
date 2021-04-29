import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/AuthProvider.dart';
import 'package:flutter_app_provider_toplearn/Widgets/SocialPicWidget.dart';
import 'package:provider/provider.dart';
import '../Screen/HomePage.dart';
import '../Widgets/InputFieldWidget.dart';
import '../Widgets/PurpleButtonWidget.dart';

class SignUpPage extends StatelessWidget {

  String _email;
  String _password;
  String _username;

  @override
  Widget build(BuildContext context) {
    final authRequest = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, right: 20, left: 20),
              child: Image.asset('signup.png'),
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
              hintText: 'Email',
              icon: Icons.email,
              onChange: (value) {
                _email = value;
              },
              type: TextInputType.emailAddress,
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
              text: 'SignUp',
              colour: Colors.purple[700],
              onPress: () {

                authRequest.signUpRequest(_username, _email.trim(), _password);
                //await authRequest.LoginRequest(_username, _password);
                //TODO
                //این برنامه ای پی ایش مشکب داره اگر کار از شزیت
                //پریفرنس استفاده میکنیم تا کاربر داخل برنامه بمونه
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialPicWidget(
                  img: 'pic1.png',
                ),
                SocialPicWidget(
                  img: 'pic2.png',
                ),
                SocialPicWidget(
                  img: 'pic3.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

