import 'package:flutter/material.dart';
import 'package:techteam/screen/signup/signup_screen.dart';
import 'package:techteam/size_config.dart';

import '../constrants.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Bạn chưa có tài khoản?'),
        SizedBox(
          width: getProportionateScreenWidth(3),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupScreen.routeName);
          },
          child: const Text(
            'Đăng kí',
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
