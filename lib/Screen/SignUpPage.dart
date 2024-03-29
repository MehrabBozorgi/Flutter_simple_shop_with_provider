import 'package:flutter/material.dart';
import '../Provider/AuthProvider.dart';
import '../Widgets/SocialPicWidget.dart';
import 'package:provider/provider.dart';
import '../Widgets/InputFieldWidget.dart';
import '../Widgets/PurpleButtonWidget.dart';
import 'HomePage.dart';

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
              padding: EdgeInsets.all( 20),
              child: Image.asset('signup.png'),
            ),
            InputFieldWidget(
              hintText: 'User name',
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
              onPress: () async {
                await authRequest.signUpRequest(
                    _username, _email.trim(), _password);
                await authRequest.LoginRequest(_username, _password);
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
