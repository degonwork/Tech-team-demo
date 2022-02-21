import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class NavBarProductCard extends StatelessWidget {
  const NavBarProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.location,
    required this.width,
  }) : super(key: key);
  final String? image, title, rating, location;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: width!,
      ),
      child: Stack(
        children: <Widget>[
          Image.asset(image!),
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(5),
              ),
              margin: EdgeInsets.only(
                right: getProportionateScreenWidth(5),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(17),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0XFFFFE56B),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                rating!,
                                style: TextStyle(
                                  fontSize: 20,
                                  height: getProportionateScreenHeight(
                                    1.5,
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/icons/star_rate.svg',
                                height: 13,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/add_location.svg'),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(
                        location!,
                        style: const TextStyle(
                          color: Color(0XFFDDDDDD),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
