import 'package:flutter/material.dart';
import '../../../../constrants.dart';
import '../../../../size_config.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        alignment: Alignment.center,
        height: getProportionateScreenHeight(230),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0XFF14B77C),
              const Color(0XFF19F7A7).withOpacity(0.3),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Đăng nhập',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(40),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            const Text(
              'Truy cập tài khoản',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
