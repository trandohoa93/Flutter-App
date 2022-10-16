import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_application_1/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:flutter_application_1/screens/login_success/login_success_screen.dart';
import 'package:flutter_application_1/screens/otp/otp_screen.dart';
import 'package:flutter_application_1/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_application_1/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_application_1/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (content) => SignInScreen(),
  ForgotPasswordScreen.routeName: (content) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (content) => LoginSuccessScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
