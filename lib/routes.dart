import 'package:flutter/material.dart';
import 'package:techteam/screen/onboarding/onboarding_screen.dart';
import 'package:techteam/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => const Onboarding(),
  SplashScreen.routename: (context) => const SplashScreen(),
};
