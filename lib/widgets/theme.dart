import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.lightGreen,
      canvasColor: MyTheme.greenishBackground,
      backgroundColor: Colors.white);

  static ThemeData get darkTheme => ThemeData(
        // textTheme: TextTheme().,
        canvasColor: MyTheme.darkGreenishBackground,

        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: MyTheme.darkGreenishBackground,
        ),

        backgroundColor: Colors.black,
        drawerTheme: DrawerThemeData(
          backgroundColor: MyTheme.darkGreenishBackground,
        ),
      );

  static Color greenishBackground = Color.fromARGB(255, 238, 244, 232);
  static Color darkGreenishBackground = Color.fromARGB(255, 22, 31, 13);
}
