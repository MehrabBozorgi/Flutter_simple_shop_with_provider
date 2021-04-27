import 'package:flutter/material.dart';
import '../Screen/HomePage.dart';
import '../Widgets/LoginInputFieldWidget.dart';
import '../Widgets/PurpleButtonWidget.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, right: 20, left: 20),
              child: Image.asset('signup.png'),
            ),
            LoginInputFieldWidget(
              hintText: 'UserName',
              icon: Icons.person,
              onChange: (value) {},
              type: TextInputType.text,
              secure: false,
            ),
            LoginInputFieldWidget(
              hintText: 'Email',
              icon: Icons.email,
              onChange: (value) {},
              type: TextInputType.emailAddress,
              secure: true,
            ),
            LoginInputFieldWidget(
              hintText: 'Password',
              icon: Icons.lock,
              onChange: (value) {},
              type: TextInputType.visiblePassword,
              secure: true,
            ),
            PurpleButtonWidget(
              text: 'SignUp',
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
