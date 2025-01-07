import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool login = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailFiled = Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          validator: RequiredValidator(errorText: 'UserID is required'),
          controller: userIdController,
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(),
          ),
        ));

    final passFiled = Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: passController,
          obscureText: true,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please enter you password";
            }
          },
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(),
          ),
        ));
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login'),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: bottom),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "lib/assests/images/loginlogo.png",
                  width: MediaQuery.of(context).size.width / 1.2,
                  // fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          emailFiled,
                          passFiled,
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            hoverColor: Colors.green,
                            onTap: () {
                              checkLogin(context);
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 16,
                              width: login
                                  ? 30
                                  : MediaQuery.of(context).size.height / 3,
                              child: login
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 7,
                // ),
                Container(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color.fromARGB(255, 0, 103, 187)),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(
                        top: 13, left: 16, bottom: 0, right: 16),
                    height: MediaQuery.of(context).size.height / 13.5,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Center(
                        child: Text(
                      "OR",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ))),

                Container(
                  margin: const EdgeInsets.only(
                      top: 13, left: 16, bottom: 0, right: 16),
                  height: MediaQuery.of(context).size.height / 13.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(color: Colors.blue),
                        )
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 13, left: 16, bottom: 0, right: 16),
                  height: MediaQuery.of(context).size.height / 13.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.g_mobiledata_rounded,
                          color: Colors.red,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(color: Colors.red),
                        )
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 13, left: 16, bottom: 0, right: 16),
                  height: MediaQuery.of(context).size.height / 13.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?"),
                      Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  final spinkit =
      SpinKitFadingCircle(itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.black : Colors.green,
      ),
    );
  });
  checkLogin(BuildContext context) async {}
}
