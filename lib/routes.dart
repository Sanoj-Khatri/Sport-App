import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/password/password_screen.dart';
import 'package:shop_app/screens/log_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
//import 'screens/complete_profile/date_picker.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LogInScreen.routeName: (context) => LogInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  //BirthDate.routeName: (context) => BirthDate(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  PasswordScreen.routeName: (context) => PasswordScreen(),
//  BirthDate.routeName: (context) => BirthDate()
  // otp.routeName: (context) =>otp(),
};
