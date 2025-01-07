import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'login.dart';

class CarBucks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Car Bucks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        fontFamily: 'Nunito',
      ),
      home: getFirstPage(),
    );
  }

  getFirstPage() {
    return LoginPage();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Container(
        height: 250,
        child: Image.asset('assets/splash-logo.png'),
      ),
    ),
  );
}
