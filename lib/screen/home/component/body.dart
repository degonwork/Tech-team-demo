import 'package:flutter/material.dart';
import 'package:techteam/screen/home/component/widget/nav_bar_product.dart';
import 'package:techteam/screen/home/component/widget/categories.dart';
import 'package:techteam/screen/home/component/widget/discount_banner.dart';
import 'package:techteam/screen/home/component/widget/promotion.dart';
import 'package:techteam/screen/home/component/widget/purchase_adress.dart';
import 'package:techteam/screen/home/component/widget/search_field.dart';
import 'package:techteam/screen/home/component/widget/select_title.dart';
import 'package:techteam/screen/home/component/widget/special_offer.dart';
import 'package:techteam/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            PurchaseAddress(
              text: 'Chung cư Bohemia, 25 Nguyễn Huy..',
              press: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SearchField(
              onChanged: (value) {},
              onTap: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const Categories(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SelectTitle(
              text: 'Trưa nay có gì?',
              press: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            const SpecialOffer(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SelectTitle(
              text: 'Khuyến mãi',
              press: () {},
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            const Promotion(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const NavBarProduct(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
