// import 'package:flutter/material.dart';
// import 'package:practice/core/store.dart';
// import 'package:velocity_x/velocity_x.dart';

// import '../models/cart.dart';
// import '../models/product.dart';

// class AddToCart extends StatelessWidget {
//   final Product product;
//   AddToCart({
//     Key? key,
//     required this.product,
//   }) : super(key: key);

//   final _cart = (VxState.store as MyStore).cart;

//   @override
//   Widget build(BuildContext context) {
//     VxState.watch(context, on: [AddMutation, RemoveMutation]);
//     bool isAdded = _cart.items.contains(product);
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         primary: context.accentColor,
//         padding: const EdgeInsets.all(8),
//         textStyle:
//             const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//       ),
//       onPressed: () {
//         if (!isAdded) {
//           AddMutation(product);
//         }
//       },
//       child: isAdded
//           ? Icon(
//               Icons.done,
//               color: Colors.black,
//             )
//           : Text(
//               "Add to Cart",
//               style: TextStyle(color: Colors.black),
//             ),
//     );
//   }
// }
