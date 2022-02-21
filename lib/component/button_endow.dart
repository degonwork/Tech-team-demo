import 'package:flutter/material.dart';
import '../constrants.dart';
import '../size_config.dart';

class Endow extends StatelessWidget {
  const Endow({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(85),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kPrimaryColor,
            width: getProportionateScreenWidth(1.5),
          ),
        ),
        child: Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0XFF13B67B),
          ),
        ),
      ),
    );
  }
}
