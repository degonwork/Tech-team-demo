import 'package:flutter/material.dart';
import 'package:techteam/screen/onboarding/component/body.dart';
import 'package:techteam/size_config.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);
  static String routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const Body(),
    );
  }
}
