import 'package:flutter/material.dart';
import 'package:labflutter/pages/login.dart';
import 'package:labflutter/utilities/routes.dart';
import 'package:labflutter/widgets/theme.dart';

import 'pages/home.dart';

//Custom widget class
void main() {
  runApp(
    MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.light,
      theme: Mytheme.LightTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (BuildContext context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
