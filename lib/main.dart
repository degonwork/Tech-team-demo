import 'package:flutter/material.dart';
import 'package:techteam/routes.dart';
import 'package:techteam/screen/onboarding/onboarding_screen.dart';
import 'package:techteam/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      routes: routes,
      initialRoute: Onboarding.routeName,
    );
  }
}
