import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labflutter/login.dart';

import 'home.dart';

//Custom widget class
void main() {
  runApp(
    MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (BuildContext context) => Home(),
        "/login": (context) => Login(),
      },
    ),
  );
}
