import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constrants.dart';
import '../../../../size_config.dart';

class PurchaseAddress extends StatelessWidget {
  const PurchaseAddress({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String? text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
          ),
          child: const Text(
            'Giao hàng đến:',
            style: TextStyle(color: kTitleTextColor),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
          ),
          child: InkWell(
            onTap: press as void Function()?,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/icons/pin_drop_24px.svg'),
                Text(
                  text!,
                  style: const TextStyle(
                      color: Color(0XFF41444B),
                      fontSize: 19.5,
                      fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(
                  'assets/icons/chevron_right_24px.svg',
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
