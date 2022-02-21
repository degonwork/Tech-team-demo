import 'package:flutter/material.dart';
import '../../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
        ),
        child: Image.asset(
          'assets/images/The Big Game.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
