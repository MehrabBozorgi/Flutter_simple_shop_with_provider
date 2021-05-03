import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Screen/CartPage.dart';
import 'package:flutter_app_provider_toplearn/Screen/DetailPage.dart';
import '../Items/HomeItem.dart';
import '../Provider/ProductProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductProvider>(context, listen: false);
    product.fetchData();
    return Consumer<ProductProvider>(
      builder: (context, value, Widget child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Provider',
              style: TextStyle(color: Colors.red),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 5,
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart_sharp,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  }),
            ],
          ),
          body: GridView.builder(
            itemCount: value.items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.75,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return HomeItem(
                product: value.items[index],
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          // وقتی فقط ایندکس خالی رو میذاریم یعنی کل مدل بره اونور
                          DetailPage(
                        product: product.items[index],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
