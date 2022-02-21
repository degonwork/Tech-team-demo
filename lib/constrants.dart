import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF13B67B);
const kPrimaryLightColor = Color(0xFFFFECDF);
final kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    const Color(0XFF14B77C),
    const Color(0XFF19F7A7).withOpacity(0.3),
  ],
);
const kTitleTextColor = Color(0xFF828282);

const kAnimationDuration = Duration(milliseconds: 200);
Duration duration = const Duration(seconds: 3);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Vui lòng nhập email hoặc số điện thoại";
const String kInvalidEmailError = "Email sai định dạng, vui lòng nhập lại!";
const String kPassNullError = "Vui lòng nhập mật khẩu của bạn";
const String kComformPassNullError = "Vui lòng nhập lại mật khẩu xác thực";
const String kShortPassError = "Mật khẩu quá ngắn";
const String kMatchPassError = "Mật khẩu xác thực không đúng";
