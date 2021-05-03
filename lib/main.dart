import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Provider/AuthProvider.dart';
import 'package:flutter_app_provider_toplearn/Provider/CartProvider.dart';
import 'package:flutter_app_provider_toplearn/Provider/CounterProvider.dart';
import 'package:flutter_app_provider_toplearn/Screen/CartPage.dart';
import 'package:flutter_app_provider_toplearn/Screen/HomePage.dart';
import 'package:flutter_app_provider_toplearn/Screen/LoginPage.dart';
import 'package:flutter_app_provider_toplearn/Screen/SplashPage.dart';
import './Provider/ProductProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
