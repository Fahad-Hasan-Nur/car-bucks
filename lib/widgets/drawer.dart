// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:practice/utils/my_routes.dart';

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           DrawerHeader(
//               margin: EdgeInsets.zero,
//               padding: EdgeInsets.zero,
//               child: UserAccountsDrawerHeader(
//                 currentAccountPicture: CircleAvatar(
//                     backgroundImage: NetworkImage(
//                         "https://scontent.fcgp6-1.fna.fbcdn.net/v/t39.30808-6/272104801_1857732837760300_7684656613212656917_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEkPswqio-6qRyrAEM0iZhjCI1jiiNT9RAIjWOKI1P1EESpz_jtwI2LFb3pmSFQe_ym3HOXxnHJ4MXq2yeHbiil&_nc_ohc=EXSXYsuH0bwAX8QNfW9&_nc_ht=scontent.fcgp6-1.fna&oh=00_AT-1SAUpYhzo0tLg-7T55ayIzyvMaCk8QWeUzEQlEk-a3w&oe=62058528")),
//                 accountName: Text("Fahad Hasan"),
//                 accountEmail: Text("fhasan451@gmail.com"),
//               )),
//           ListTile(
//             leading: Icon(CupertinoIcons.home, color: Colors.lightGreen),
//             title: Text(
//               "Home",
//               textScaleFactor: 1.5,
//             ),
//           ),
//           ListTile(
//             leading:
//                 Icon(CupertinoIcons.shopping_cart, color: Colors.lightGreen),
//             title: Text(
//               "Cart",
//               textScaleFactor: 1.5,
//             ),
//           ),
//           ListTile(
//             leading:
//                 Icon(CupertinoIcons.profile_circled, color: Colors.lightGreen),
//             title: Text(
//               "Profile",
//               textScaleFactor: 1.5,
//             ),
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.pushNamed(context, MyRoutes.loginRoute);
//             },
//             leading: Icon(Icons.login, color: Colors.lightGreen),
//             title: Text(
//               "Login",
//               textScaleFactor: 1.5,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
