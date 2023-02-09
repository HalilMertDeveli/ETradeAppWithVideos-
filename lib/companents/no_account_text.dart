import 'package:e_trade_app_with_flutter_way/constraints.dart';
import 'package:e_trade_app_with_flutter_way/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/sign_in/sign_in_screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/sign_up/sign_up_screen.dart';
import 'package:e_trade_app_with_flutter_way/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have an account ? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            'sign up',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
