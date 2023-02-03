import 'package:e_trade_app_with_flutter_way/companents/no_account_text.dart';
import 'package:e_trade_app_with_flutter_way/companents/social_card.dart';
import 'package:e_trade_app_with_flutter_way/constraints.dart';
import 'package:e_trade_app_with_flutter_way/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/sign_in/companents/sign_from.dart';
import 'package:e_trade_app_with_flutter_way/size_config.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenHeight(27),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sign in with your e-mail and password \nor continue with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {
                      //operation is login with facebook
                    },
                  ),
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {
                      //operation is login with google
                    },
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: () {
                      //operation is login with twitter book
                    },
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}
