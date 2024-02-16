import 'package:flutter/material.dart';
import 'package:food_express_app/login_page.dart';
import 'package:food_express_app/signup_page.dart';
import 'package:food_express_app/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'FoodApp',
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashScreen',
    routes: {
      'splashScreen': (context) => SplashScreen(),
      'login': (context) => LoginPageApp(),
      'register': (context) => SignupPageApp(),
      // 'DetailPage': (context) => DetailPageApp(),
    },
  ));
}
