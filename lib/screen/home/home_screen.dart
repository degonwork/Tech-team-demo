import 'package:flutter/material.dart';
import 'package:techteam/component/custom_navbar.dart';
import 'package:techteam/screen/home/component/body.dart';
import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(
        selectMenu: MenuState.home,
      ),
    );
  }
}
