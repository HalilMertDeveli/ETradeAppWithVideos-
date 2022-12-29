import 'package:e_trade_app_with_flutter_way/companents/custom_suffix_icon.dart';
import 'package:e_trade_app_with_flutter_way/companents/default_button.dart';
import 'package:e_trade_app_with_flutter_way/companents/form_error.dart';
import 'package:e_trade_app_with_flutter_way/constraints.dart';
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
          ],
        ),
      ),
    ));
  }
}
