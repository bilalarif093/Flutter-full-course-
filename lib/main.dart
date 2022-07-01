import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labflutter/pages/login.dart';
import 'package:labflutter/utilities/routes.dart';

import 'pages/home.dart';

//Custom widget class
void main() {
  runApp(
    MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (BuildContext context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
