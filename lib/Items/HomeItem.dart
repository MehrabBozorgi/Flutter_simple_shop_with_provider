import 'package:flutter/material.dart';
import 'package:flutter_app_provider_toplearn/Widgets/Kconst.dart';
import '../Model/Product.dart';

class HomeItem extends StatelessWidget {
  final Product product;
  final Function onPress;

  const HomeItem({this.product, this.onPress});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red[600], width: 3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(product.id.toString()),
              ),
              SizedBox(
                height: 5,
              ),
              Image(
                image: NetworkImage(
                  product.url,
                ),
                height: 160,
              ),
              SizedBox(
                height: 5,
              ),
              Hero(tag: product.id,
                child: Text(
                  product.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: kTitleStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
