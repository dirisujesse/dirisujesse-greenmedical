import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'
    show BuildContext, Widget;
import 'package:roavapp/pages/auth/login_page.dart';
import 'package:roavapp/pages/auth/signup_page.dart';
import 'package:roavapp/pages/covid/covid_page.dart';
import 'package:roavapp/pages/dashboard/dashboard_page.dart';
import 'package:roavapp/pages/emergency/emergency_page.dart';
import 'package:roavapp/pages/map/map_page.dart';
import 'package:roavapp/pages/success/success_page.dart';

final Map<String, Widget Function(BuildContext)> staticRoutes = {
  "/signup": (BuildContext context) => const SignupPage(),
  "/login": (BuildContext context) => const LoginPage(),
  "/dashboard": (BuildContext context) => const DashboardPage(),
  "/emergency": (BuildContext context) => const EmergencyPage(),
  "/covid": (BuildContext context) => const CovidPage(),
  "/success": (BuildContext context) => const SuccessPage(),
  "/map": (BuildContext context) => const MapPage(),
};

Route<dynamic> dynamicRoutes(RouteSettings settings) {
  switch (settings.name) {
    default:
      return MaterialPageRoute(
        builder: (context) {
          return const SuccessPage();
        },
      );
  }
}
