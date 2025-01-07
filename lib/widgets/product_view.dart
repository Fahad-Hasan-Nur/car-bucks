// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:practice/models/product.dart';
// import 'add_to_cart.dart';

// class ProductView extends StatelessWidget {
//   final Product product;
//   const ProductView({Key? key, required this.product}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: Key(product.image),
//       child: Material(
//         type: MaterialType.transparency,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
//           child: Container(
//             color: context.backgroundColor,
//             child: SizedBox(
//               height: 160,
//               child: Row(children: [
//                 Container(
//                   color: context.canvasColor,
//                   width: context.percentWidth * 40,
//                   child: Image.network(product.image),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Text(product.name,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 18),
//                             textAlign: TextAlign.right),
//                         Text(
//                           product.description,
//                         ),
//                         ButtonBar(
//                           alignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "\$${product.price}",
//                               style: TextStyle(
//                                   color: context.accentColor,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             AddToCart(product: product)
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ]),
//             ).p12(),
//           ),
//         ),
//       ),
//     );
//   }
// }
