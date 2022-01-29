import 'package:flutter/material.dart';

import '../../../../constrants.dart';
import '../../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.headingText,
    required this.titleText,
    required this.images,
  }) : super(key: key);
  final String? headingText, images, titleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          images!,
          width: getProportionateScreenWidth(180),
        ),
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
        Text(
          headingText!,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Text(
          titleText!,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kTitleTextColor),
        ),
      ],
    );
  }
}
