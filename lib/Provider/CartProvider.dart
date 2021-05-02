import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Model/Cart.dart';
import 'package:flutter_app_provider_toplearn/Model/Product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CartProvider extends ChangeNotifier {
  String orderListUrl = '';
  List<Cart> _cartItems = [];
  List productItem = [];

  List<Product> productList = [];
  List<Product> item = [];

  List<Cart> get items => _cartItems;

  //با استفاده از این دستور با شریت پریفرنس توکن کاربر رو ازش میگیریم
  Future getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var tokenResult = preferences.getString('token');
    fetchOrderItems(tokenResult);
    notifyListeners();
  }

//و توکن رو به این تابع پاس دادیم
  Future fetchOrderItems(var token) async {
    var response = await http.get(orderListUrl, headers: {
      HttpHeaders.authorizationHeader: 'token,$token',
    });

    List data = jsonDecode(response.body);

    List<Cart> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = Cart.fromJson(data[i]);

      loaded.add(result);
    }
    _cartItems = loaded;

    //از این خط به بعد جزییات سبد خرید میباشد
    //جزییات سبد خرید
    for (int i = 0; i < items.length; i++) {
      productItem = items[i].order;
    }

    //تعداد محصولات در سبد خرید
    for (int i = 0; i < productItem.length; i++) {
      var result = Product.fromJson(productItem[i]['product']);

      productList.add(result);
    }
    item = productList;
    notifyListeners();
  }

  int totalTedad() {
    var count = 0;
    for (int i = 0; i < productItem.length; i++) {
      count += productItem[i]['tedad'];
    }
    return count;
  }

  int totalPrice() {
    var totalPrice = 0;
    for (int i = 0; i < productItem.length; i++) {
      totalPrice +=
          (productItem[i]['tedad'] * productItem[i]['product']['price']);
    }
    return totalPrice;
  }
}
