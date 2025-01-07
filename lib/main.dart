// import 'package:flutter/material.dart';
// import 'package:practice/core/store.dart';
// import 'package:practice/page/cart_page.dart';
// import 'package:practice/page/home_page.dart';
// import 'package:practice/page/login_page.dart';
// import 'package:practice/utils/my_routes.dart';
// import 'package:practice/widgets/theme.dart';
// import 'package:velocity_x/velocity_x.dart';

// void main() {
//   runApp(VxState(store: MyStore(), child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.system,
//       theme: MyTheme.lightTheme,
//       darkTheme: MyTheme.darkTheme,
//       routes: {
//         "/": (context) => HomePage(),
//         MyRoutes.homeRoute: (context) => HomePage(),
//         MyRoutes.loginRoute: (context) => LoginPage(),
//         MyRoutes.cartRoute: (context) => CartPage()
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'carbucks/car_bucks.dart';

void main() async {
  runApp(CarBucks());
}
