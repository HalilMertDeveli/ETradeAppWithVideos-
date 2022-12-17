import 'package:e_trade_app_with_flutter_way/screens/splash/companets/body.dart';
import 'package:e_trade_app_with_flutter_way/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static final String routeName = '/spllash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
