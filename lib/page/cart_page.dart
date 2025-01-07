// import 'package:flutter/material.dart';
// import 'package:practice/core/store.dart';
// import 'package:practice/models/cart.dart';
// import 'package:velocity_x/velocity_x.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Cart")),
//       body: Column(children: [
//         Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: SizedBox(
//               height: context.percentHeight * 70,
//               width: context.percentWidth * 100,
//               child: CartList()),
//         ),
//         _cartTotal(),
//       ]),
//     );
//   }
// }

// class CartList extends StatelessWidget {
//   final _cart = (VxState.store as MyStore).cart;
//   @override
//   Widget build(BuildContext context) {
//     VxState.watch(context, on: [RemoveMutation]);
//     return _cart.items.isEmpty
//         ? Center(
//             child: Text(
//             "Nothing to Show....",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ))
//         : ListView.builder(
//             itemCount: _cart.items.length,
//             itemBuilder: (context, index) => ListTile(
//                   leading: Icon(Icons.done),
//                   trailing: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: context.accentColor,
//                       padding: const EdgeInsets.all(0),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0)),
//                     ),
//                     onPressed: () {
//                       RemoveMutation(_cart.items[index]);
//                       //   _cart.remove(_cart.items[index]);
//                       //    setState(() {});
//                     },
//                     child: Icon(
//                       Icons.delete,
//                       color: Colors.black,
//                     ),
//                   ),
//                   title: Text(_cart.items[index].name),
//                 ));
//   }
// }

// class _cartTotal extends StatelessWidget {
//   final _cart = (VxState.store as MyStore).cart;
//   @override
//   Widget build(BuildContext context) {
//     VxState.watch(context, on: [RemoveMutation]);
//     return SizedBox(
//         child: Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Text("\$${_cart.totalPrice}",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             primary: context.accentColor,
//             padding: const EdgeInsets.all(0),
//             textStyle: const TextStyle(fontWeight: FontWeight.bold),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0)),
//           ),
//           onPressed: () {
//             ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text("Buying is not supported yet.")));
//           },
//           child: Text(
//             "BUY",
//             style: TextStyle(color: Colors.black),
//           ),
//         )
//       ],
//     ));
//   }
// }
