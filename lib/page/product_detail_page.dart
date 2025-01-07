// import 'package:flutter/material.dart';

// import 'package:practice/models/product.dart';
// import 'package:practice/widgets/add_to_cart.dart';
// import 'package:velocity_x/velocity_x.dart';
// import '../widgets/product_detail_view.dart';

// class ProductDetailPage extends StatelessWidget {
//   const ProductDetailPage({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//   final Product product;

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // final _cart = CartModel();
//     // bool isAdded = _cart.items.contains(widget.product) ?? false;
//     return Scaffold(
//       backgroundColor: context.canvasColor,
//       appBar: AppBar(
//         title: Text("Nur Ecommerce"),
//       ),
//       body: ProductDetailView(product: product),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: ButtonBar(
//           alignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("\$${product.price}",
//                 style: TextStyle(
//                     color: context.accentColor,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25)),
//             AddToCart(product: product)
//           ],
//         ),
//       ),
//     );
//   }
// }
