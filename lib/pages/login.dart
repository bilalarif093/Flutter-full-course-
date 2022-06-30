import 'package:flutter/material.dart';
import 'package:labflutter/utilities/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    name = "Bilal Arif";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/login.png",
              fit: BoxFit.cover,
              // width: 350.0,
              // height: 250.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Login" + name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "Username"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardAppearance: Brightness.light,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style: TextButton.styleFrom(minimumSize: Size(150.0, 40.0)),
                    child: Text(
                      "Login",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
