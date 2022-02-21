import 'package:flutter/material.dart';
import 'package:techteam/component/nav_bar_product_card.dart';
import 'package:techteam/constrants.dart';
import '../../../../size_config.dart';

class NavBarProduct extends StatefulWidget {
  const NavBarProduct({Key? key}) : super(key: key);

  @override
  State<NavBarProduct> createState() => _NavBarProductState();
}

class _NavBarProductState extends State<NavBarProduct> {
  int _selectItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> title = ['Gần tôi', 'Bán chạy', 'Đánh giá', 'Giao nhanh'];
    List<Map<String, dynamic>> navBarProducts = [
      {
        'image': 'assets/images/Pizza hut.png',
        'title': 'Bánh mì',
        'rating': '4.',
        'location': '11 Trần Phú, Hà Nội'
      },
      {
        'image': 'assets/images/Bia hơi hut.png',
        'title': 'Bia hơi',
        'rating': '4.',
        'location': '11 Hà Đông, Hà Nội'
      }
    ];
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ...List.generate(
                title.length,
                (index) => buildNavBarTitle(
                  title: title[index],
                  index: index,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: getProportionateScreenHeight(15),
              ),
              child: Row(
                children: <Widget>[
                  ...List.generate(
                    navBarProducts.length,
                    (index) => NavBarProductCard(
                      image: navBarProducts[index]['image'],
                      title: navBarProducts[index]['title'],
                      rating: navBarProducts[index]['rating'],
                      location: navBarProducts[index]['location'],
                      width: index == navBarProducts.length - 1
                          ? 0
                          : getProportionateScreenWidth(15),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  GestureDetector buildNavBarTitle({
    String? title,
    int? index,
  }) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            _selectItemIndex = index!;
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: _selectItemIndex == index
                ? const BorderSide(
                    width: 1.0,
                    color: kPrimaryColor,
                  )
                : BorderSide.none,
          ),
        ),
        child: Text(
          title!,
          style: TextStyle(
            color: _selectItemIndex == index
                ? kPrimaryColor
                : const Color(0XFF41444B),
            fontSize: getProportionateScreenWidth(17),
          ),
        ),
      ),
    );
  }
}
