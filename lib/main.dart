import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techteam/constrants.dart';
import 'package:techteam/routes.dart';
import 'package:techteam/screen/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli",
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: kTitleTextColor),
            bodyText2: TextStyle(color: kTitleTextColor),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: true,
          )),
      routes: routes,
      initialRoute: Onboarding.routeName,
    );
  }
}
