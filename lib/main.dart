import 'package:flutter/material.dart';
import 'package:roavapp/pages/auth/signup_page.dart';
import 'package:roavapp/styles/theme.dart';
import 'package:roavapp/values/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData(),
      home: SignupPage(),
      routes: staticRoutes,
      onGenerateRoute: dynamicRoutes,
    );
  }
}
