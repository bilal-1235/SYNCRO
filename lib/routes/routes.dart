


import 'package:flutter/material.dart';
import 'package:syncro/views/auth/login/login_screen.dart';
import 'package:syncro/views/auth/singup/signup_screen.dart';

class Routes {

  // ---------- auth screen routes -------------
  static const String loginPage = 'login';
  static const String signupPage = 'signup';


  static final routes = <String, Widget Function(BuildContext)>{
    loginPage: (context) => LoginScreen(),
    signupPage: (context) => SignupScreen(),
  };
}