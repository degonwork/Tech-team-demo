import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constrants.dart';
import '../enum.dart';
import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.selectMenu,
  }) : super(key: key);
  final MenuState selectMenu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(75),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(12),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0XFFDADADA).withOpacity(0.15),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ButtonNavBar(
                icon: 'assets/icons/home.svg',
                title: 'Trang chủ',
                iconColor: MenuState.home == selectMenu
                    ? kPrimaryColor
                    : Colors.black.withOpacity(0.54),
                textColor: MenuState.home == selectMenu
                    ? kPrimaryColor
                    : const Color(0XFF4F4F4F),
                press: () {},
              ),
              ButtonNavBar(
                icon: 'assets/icons/favorite_border.svg',
                title: 'Đã lưu',
                iconColor: MenuState.favorite == selectMenu
                    ? kPrimaryColor
                    : kTitleTextColor,
                textColor: MenuState.favorite == selectMenu
                    ? kPrimaryColor
                    : const Color(0XFF4F4F4F),
                press: () {},
              ),
              ButtonNavBar(
                icon: 'assets/icons/shopping_cart.svg',
                title: 'Giỏ hàng',
                iconColor: MenuState.cart == selectMenu
                    ? kPrimaryColor
                    : Colors.black.withOpacity(0.54),
                textColor: MenuState.cart == selectMenu
                    ? kPrimaryColor
                    : const Color(0XFF4F4F4F),
                press: () {},
              ),
              ButtonNavBar(
                icon: 'assets/icons/order.svg',
                title: 'Đơn hàng',
                iconColor: MenuState.order == selectMenu
                    ? kPrimaryColor
                    : Colors.black.withOpacity(0.54),
                textColor: MenuState.order == selectMenu
                    ? kPrimaryColor
                    : const Color(0XFF4F4F4F),
                press: () {},
              ),
              ButtonNavBar(
                icon: 'assets/icons/account_box.svg',
                title: 'Tài khoản',
                iconColor: MenuState.profile == selectMenu
                    ? kPrimaryColor
                    : Colors.black.withOpacity(0.54),
                textColor: MenuState.profile == selectMenu
                    ? kPrimaryColor
                    : const Color(0XFF4F4F4F),
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
    required this.iconColor,
    required this.textColor,
  }) : super(key: key);
  final String? icon, title;
  final Function? press;
  final Color? iconColor, textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            SvgPicture.asset(
              icon!,
              color: iconColor,
            ),
            Text(
              title!,
              style: TextStyle(
                color: textColor,
                height: 1.7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
