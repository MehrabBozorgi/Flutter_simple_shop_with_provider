import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/AuthProvider.dart';
import 'package:flutter_app_provider_toplearn/Screen/HomePage.dart';
import 'package:flutter_app_provider_toplearn/Screen/WelcomePage.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> _opacityAnim;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _opacityAnim = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
    checkLogin();
  }

  checkLogin() {
    final token = Provider.of<AuthProvider>(context, listen: false);
    _opacityAnim.addStatusListener((status) async {
      if (status == AnimationStatus.completed && token.tokenResult != null) {
        Future.delayed(Duration(seconds: 1), () {
          logged(HomePage());
        });
      } else {
        Future.delayed(Duration(seconds: 1), () {
          logged(WelcomePage());
        });
      }
    });
  }

  logged(Widget screen) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Center(
              child: Opacity(
                opacity: _opacityAnim.value,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'one ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                        ),
                      ),
                      TextSpan(
                        text: ' two',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

//این متد صفحه اسپلش رو بعد از اینکه انیمیشنش تموم شدش کلا متوقف میکنه و میبنده
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
