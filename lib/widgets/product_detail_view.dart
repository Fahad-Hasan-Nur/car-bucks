import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/product.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: context.percentWidth * 100,
          width: context.percentWidth * 100,
          color: context.backgroundColor,
          child: Hero(
            tag: Key(product.image),
            child: Material(
              type: MaterialType.transparency,
              child: Image.network(
                product.image,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: Column(children: [
              Text(
                product.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                product.description,
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
