import 'package:flutter/material.dart';

import '../constrants.dart';
import '../size_config.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    Key? key,
    required this.labelText,
    required this.titleText,
    required this.child,
  }) : super(key: key);
  final String labelText;
  final String titleText;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: getProportionateScreenHeight(230),
            decoration: BoxDecoration(
              gradient: kPrimaryGradientColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  labelText,
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(40),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  titleText,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: child,
          ),
        ],
      ),
    );
  }
}
