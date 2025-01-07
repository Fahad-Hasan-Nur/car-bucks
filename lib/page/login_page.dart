// import 'package:flutter/material.dart';
// import 'package:practice/utils/my_routes.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//   bool login = false;

//   final _formKey = GlobalKey<FormState>();

//   goToHome(BuildContext context) async {
//     //Need fix
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         this.login = true;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       Navigator.pushNamed(context, MyRoutes.homeRoute);
//     }
//   }

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         child: Center(
//       child: Column(children: [
//         Image.asset(
//           "assets/images/login.png",
//           fit: BoxFit.cover,
//         ),
//         Text(
//           "Welcome ",
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           "$name",
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Form(
//           key: _formKey,
//           child: Padding(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                         label: Text("Email"), hintText: "Enter your email."),
//                     onChanged: (value) {
//                       this.name = value;
//                       setState(() {});
//                     },
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "Please enter you email";
//                       }
//                       return null;
//                     },
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         label: Text("Password"),
//                         hintText: "Enter your password."),
//                     obscureText: true,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return "Please enter you password";
//                       } else if (value.length < 6) {
//                         return "Password should be at least 5 character..";
//                       }

//                       return null;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   InkWell(
//                     hoverColor: Colors.green,
//                     onTap: () {
//                       goToHome(context);
//                     },
//                     child: AnimatedContainer(
//                       duration: Duration(seconds: 1),
//                       alignment: Alignment.center,
//                       height: 30,
//                       width: login ? 30 : 70,
//                       child: login
//                           ? Icon(
//                               Icons.done,
//                               color: Colors.white,
//                             )
//                           : Text(
//                               "Login",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                       decoration: BoxDecoration(
//                           color: Colors.lightGreen,
//                           borderRadius: BorderRadius.circular(5)),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         )
//       ]),
//     ));
//   }
// }
