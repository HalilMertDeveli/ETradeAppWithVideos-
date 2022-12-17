import 'package:e_trade_app_with_flutter_way/companents/default_button.dart';
import 'package:e_trade_app_with_flutter_way/constraints.dart';
import 'package:e_trade_app_with_flutter_way/screens/splash/companets/splash_content.dart';
import 'package:e_trade_app_with_flutter_way/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto ,Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people connect with store \naround United State of Amarica",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop.\n just stay at home with us",
      "image": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  //for slider
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"]!,
                    text: splashData[index]["text"]!,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
