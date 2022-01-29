import 'package:flutter/material.dart';
import 'package:techteam/screen/splash/splash_screen.dart';
import 'package:techteam/size_config.dart';

import '../../../constrants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      duration,
      () => Navigator.pushNamed(context, SplashScreen.routename),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/Pitfood.png',
              fit: BoxFit.cover,
            ),
            Text(
              'Siêu nhanh, Siêu ngon miệng',
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenHeight(28),
              ),
            )
          ],
        ),
      ),
    );
  }
}
