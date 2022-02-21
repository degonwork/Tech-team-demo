import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techteam/component/button_endow.dart';

import '../../../../size_config.dart';

class Promotion extends StatelessWidget {
  const Promotion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> promotions = [
      {
        'image': 'assets/images/Pizza.png',
        'title': 'Mộc quán',
        'rating': '4.5',
        'quatilyRating': '100',
        'distance': '0.5',
        'endowTexts': <String>['Freeship', 'Giảm món'],
      },
      {
        'image': 'assets/images/BeerHaiXom.png',
        'title': 'Bia hơi Hải Xồm',
        'rating': '4.5',
        'quatilyRating': '100',
        'distance': '2.5',
        'endowTexts': <String>['+ 3 bia', 'Miễn phí'],
      },
    ];
    return Column(
      children: [
        ...List.generate(
          promotions.length,
          (index) => PromotionCard(
            image: promotions[index]['image'],
            title: promotions[index]['title'],
            rating: promotions[index]['rating'],
            quatilyRating: promotions[index]['quatilyRating'],
            distance: promotions[index]['distance'],
            endowTexts: promotions[index]['endowTexts'],
          ),
        ),
      ],
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.quatilyRating,
    required this.distance,
    required this.endowTexts,
  }) : super(key: key);
  final String? image, title, rating, quatilyRating, distance;
  final List<String> endowTexts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(180),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenWidth(10)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(15),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      title!,
                      style: TextStyle(
                        color: const Color(0XFF1D1D1D),
                        fontSize: getProportionateScreenWidth(17),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/star_rate_18px.svg'),
                        SizedBox(
                          width: getProportionateScreenWidth(5),
                        ),
                        Text(
                          '$rating ($quatilyRating+)',
                          style: const TextStyle(
                            color: Color(0XFF4F4F4F),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        SvgPicture.asset('assets/icons/Ellipse 2.svg'),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        SvgPicture.asset(
                          'assets/icons/child_friendly_24px.svg',
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(5),
                        ),
                        Text('${distance}km'),
                      ],
                    ),
                    const Spacer(
                      flex: 5,
                    ),
                    Row(
                      children: [
                        Endow(
                          text: endowTexts[0],
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Endow(
                          text: endowTexts[1],
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
