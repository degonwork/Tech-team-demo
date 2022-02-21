import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constrants.dart';
import '../../../../size_config.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> specialOffers = [
      {
        'image': 'assets/images/RiceChick.png',
        'title': 'Cơm đùi gà',
        'subtitle': 'Mộc quán',
        'price': '65.000đ',
        'distance': '0.5',
        'time': '5',
      },
      {
        'image': 'assets/images/Fresh Beer.png',
        'title': 'Bia hơi',
        'subtitle': 'Bia hơi Hải Xồm',
        'price': '15.000đ',
        'distance': '2.5',
        'time': '15',
      },
      {
        'image': 'assets/images/Ice Scream cone.png',
        'title': 'Kem ốc quế',
        'subtitle': 'Kem Tràng Tiền',
        'price': '35.000đ',
        'distance': '3.1',
        'time': '25',
      },
    ];
    return Column(
      children: [
        ...List.generate(
          specialOffers.length,
          (index) => SpecialOfferCard(
            image: specialOffers[index]['image'],
            title: specialOffers[index]['title'],
            subtitle: specialOffers[index]['subtitle'],
            time: specialOffers[index]['time'],
            price: specialOffers[index]['price'],
            distance: specialOffers[index]['distance'],
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.distance,
    required this.time,
    required this.onTap,
  }) : super(key: key);
  final String? image, title, subtitle, price, distance, time;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(160),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenHeight(10),
      ),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(
                image!,
                height: getProportionateScreenHeight(150),
                fit: BoxFit.cover,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title!,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(19),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price!,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(19),
                        ),
                      )
                    ],
                  ),
                  Text(
                    subtitle!,
                    style: const TextStyle(
                      color: kTitleTextColor,
                    ),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/place_24px.svg'),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(
                        '${distance}km | ${time}min',
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: onTap,
                          child: SvgPicture.asset(
                              'assets/icons/control_point_24px.svg'))
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
          ],
        ),
      ),
    );
  }
}
