import 'package:e_trade_app_with_flutter_way/screens/sign_in/companents/sign_from.dart';
import 'package:e_trade_app_with_flutter_way/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenHeight(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sign in with your e-mail and password \nor continue with social media',
              textAlign: TextAlign.center,
            ),
            SignForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: 'assets/icons/facebook-2.svg',
                  press: () {
                    //operation is login with face book
                  },
                ),
                SocialCard(
                  icon: 'assets/icons/google-icon.svg',
                  press: () {
                    //operation is login with face book
                  },
                ),
                SocialCard(
                  icon: 'assets/icons/twitter.svg',
                  press: () {
                    //operation is login with face book
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class SocialCard extends StatelessWidget {
  final String icon;
  final VoidCallback press;

  const SocialCard({
    super.key,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenWidth(60),
        decoration:
            BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
