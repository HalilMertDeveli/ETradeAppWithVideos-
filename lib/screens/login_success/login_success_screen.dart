import 'package:e_trade_app_with_flutter_way/screens/login_success/companents/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String rootName = "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Success'),
      ),
      body: Body(),
    );
  }
}
