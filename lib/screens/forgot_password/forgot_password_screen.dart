import 'package:e_trade_app_with_flutter_way/screens/forgot_password/companents/body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routName = "/forgot_pasword";

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Forgot password'),
      ),
      body: Body(),
    );
  }
}
