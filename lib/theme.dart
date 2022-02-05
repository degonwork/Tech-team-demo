import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techteam/constrants.dart';

ThemeData theme() {
  return ThemeData(
    backgroundColor: const Color(0XFFF2F2F2),
    fontFamily: 'Muli',
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    elevation: 0,
    color: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    centerTitle: true,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTitleTextColor),
    bodyText2: TextStyle(color: kTitleTextColor),
  );
}
