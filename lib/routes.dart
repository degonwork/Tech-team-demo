import 'package:flutter/material.dart';
import 'package:techteam/screen/home/home_screen.dart';
import 'package:techteam/screen/login/login_screen.dart';
import 'package:techteam/screen/onboarding/onboarding_screen.dart';
import 'package:techteam/screen/signup/signup_screen.dart';
import 'package:techteam/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => const Onboarding(),
  SplashScreen.routename: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
