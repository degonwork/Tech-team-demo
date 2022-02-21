import 'package:flutter/material.dart';
import '../../../../constrants.dart';
import '../../../../size_config.dart';

class SelectTitle extends StatelessWidget {
  const SelectTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String? text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text!,
            style: const TextStyle(
                fontSize: 22,
                color: Color(0XFF41444B),
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              'Xem thêm',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
