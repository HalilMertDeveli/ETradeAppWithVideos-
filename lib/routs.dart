import 'package:e_trade_app_with_flutter_way/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/login_success/login_success.screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/sign_in/sign_in_screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/sign_up/sign_up_screen.dart';
import 'package:e_trade_app_with_flutter_way/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

//we will use name route
//all our routes will be avaible here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
};
