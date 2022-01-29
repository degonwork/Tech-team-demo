import 'package:flutter/material.dart';
import 'package:techteam/screen/begin/begin_screen.dart';
import 'package:techteam/screen/splash/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  BeginScreen.routeName: (context) => const BeginScreen(),
  SplashScreen.routename: (context) => const SplashScreen(),
};
