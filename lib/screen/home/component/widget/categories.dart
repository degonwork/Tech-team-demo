import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constrants.dart';
import '../../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/gripfire.svg', 'text': 'Phổ biến'},
      {'icon': 'assets/icons/pizza.svg', 'text': 'Bánh'},
      {'icon': 'assets/icons/ice_scream.svg', 'text': 'Đồ uống'},
      {'icon': 'assets/icons/ramen.svg', 'text': 'Đồ ăn'},
      {'icon': 'assets/icons/palette.svg', 'text': 'Kẹo'},
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
        ),
        child: Row(
          children: [
            ...List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index]['icon'],
                text: categories[index]['text'],
                width: index == categories.length - 1
                    ? 0
                    : getProportionateScreenWidth(20),
                color: index == 0 ? const Color(0XFF4F4F4F) : kTitleTextColor,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
    required this.width,
    required this.color,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback? press;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          right: width!,
        ),
        child: SizedBox(
          width: getProportionateScreenWidth(62),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.24,
                child: ClipOval(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(18),
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      border: Border.all(color: kPrimaryColor),
                    ),
                    child: SvgPicture.asset(
                      icon!,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
