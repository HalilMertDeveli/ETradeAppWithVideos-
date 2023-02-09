import 'package:e_trade_app_with_flutter_way/companents/default_button.dart';
import 'package:e_trade_app_with_flutter_way/screens/splash/splash_screen.dart';
import 'package:e_trade_app_with_flutter_way/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenHeight(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.06,
          width: SizeConfig.screenWidth * 0.8,
          child: DefaultButton(
            text: 'Back To Home',
            press: () => Navigator.pushNamed(context, SplashScreen.routeName),
          ),
        )
      ],
    );
  }
}
