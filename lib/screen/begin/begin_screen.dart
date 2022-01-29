import 'package:flutter/material.dart';
import 'package:techteam/screen/begin/component/body.dart';
import 'package:techteam/size_config.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({Key? key}) : super(key: key);
  static String routeName = '/begin';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
