import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/core/store.dart';
import 'package:practice/models/cart.dart';
import 'package:practice/page/product_detail_page.dart';
import 'package:practice/utils/my_routes.dart';
import 'package:practice/widgets/drawer.dart';
import 'package:practice/widgets/product_view.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get product => null;
  final String url = "http://localhost:8080//api/product/getAll";

  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();
    loadData();
  }

  // void loadData() async {
  //   var url = Uri.http('localhost:8080', '/api/product/getAll', {});

  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     final jsonProduct = response.body;
  //     final decodeJson = jsonDecode(jsonProduct);
  //     // print(decodeJson);
  //     // var data = decodeJson["products"];
  //     ProductModel.products = List.from(decodeJson)
  //         .map<Product>((item) => Product.fromMap(item))
  //         .toList();
  //     setState(() {});
  //   }
  // }

  void loadData() async {
    final jsonProduct =
        await rootBundle.loadString("assets/files/product.json");

    final decodeJson = jsonDecode(jsonProduct);
    var data = decodeJson["products"];
    ProductModel.products =
        List.from(data).map<Product>((e) => Product.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: Text("Nur Ecommerce"),
      ),
      body: (ProductModel.products.isNotEmpty)
          ? ListView.builder(
              itemCount: ProductModel.products.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: ProductView(product: ProductModel.products[index]),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                            product: ProductModel.products[index])),
                  ),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      //     Container(
      //   height: 100,
      //   child: Container(
      //     width: 160.0,
      //     color: Colors.red,
      //   ),
      // ),
      drawer: MyDrawer(),
      floatingActionButton: Builder(builder: (context) {
        VxState.watch(context, on: [AddMutation, RemoveMutation]);
        return FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          child: Icon(
            CupertinoIcons.cart_badge_plus,
          ),
        ).badge(count: _cart.items.length, color: Colors.black, size: 20);
      }),
    );
  }
}
