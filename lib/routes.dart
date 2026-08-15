import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/login/pages/login_page.dart';
import 'package:flutter_application_1/features/signup/pages/signup_page.dart';
import 'package:flutter_application_1/features/login/pages/lostpass_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    LoginPage.route: (contex) => LoginPage(),
    SignupPage.route: (contex) => SignupPage(),
    LostpassPage.route: (contex) => LostpassPage(),
  };
}
