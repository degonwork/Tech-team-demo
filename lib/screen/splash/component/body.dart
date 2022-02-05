import 'package:flutter/material.dart';
import 'package:techteam/component/default_button.dart';
import 'package:techteam/constrants.dart';
import 'package:techteam/screen/login/login_screen.dart';
import 'package:techteam/screen/splash/component/widget/splash_content.dart';
import 'package:techteam/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentState = 0;
  List<Map<String, String>> splashData = [
    {
      'image': 'assets/images/popcorn 1.png',
      'headingText': 'Chọn món ăn ngon',
      'titleText':
          'Đặt bất cứ món ăn ngon nào mà bạn thích từ nhà hàng yêu thích của bạn.',
    },
    {
      'image': 'assets/images/Group.png',
      'headingText': 'Dễ dàng thanh toán',
      'titleText':
          'Thanh toán dễ dàng qua thẻ ghi nợ, thẻ tín dụng và nhiều cách khác để thanh toán món ăn của bạn.'
    },
    {
      'image': 'assets/images/restaurant 1.png',
      'headingText': 'Thưởng thức món ăn',
      'titleText':
          'Ăn uống lành mạnh sẽ cung cấp cho bạn các chất dinh dưỡng cần thiết để duy trì sức khỏe tốt.'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(70),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(60),
                  ),
                  child: PageView.builder(
                    onPageChanged: (value) => {
                      setState(() {
                        currentState = value;
                      })
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      images: splashData[index]['image'],
                      headingText: splashData[index]['headingText'],
                      titleText: splashData[index]['titleText'],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenHeight(35),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => builDot(index: index),
                        ),
                      ),
                      const Spacer(),
                      DefaultButton(
                        text: 'Tiếp tục',
                        press: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer builDot({int? index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: kAnimationDuration,
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        color: currentState == index ? kPrimaryColor : const Color(0XFFC4C4C4),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
