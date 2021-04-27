import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../Model/Product.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  String url = 'https://jsonplaceholder.typicode.com/photos';
  List<Product> _items = [];

  List<Product> get items => _items;

  Future fetchData() async {
    var response = await http.get(url);

    List data = jsonDecode(utf8.decode(response.bodyBytes));

    List<Product> loaded = [];
    for (int i = 0; i < data.length; i++) {
      var result = Product.fromJson(data[i]);
      loaded.add(result);
    }
    _items = loaded;
    notifyListeners();
  }
}
