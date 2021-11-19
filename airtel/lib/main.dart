// import 'package:airtel/routes.dart';
import 'package:airtel/screens/EnterMobileNumber/enter_mobile.dart';
import 'package:airtel/screens/Home/home.dart';
import 'package:airtel/screens/Menu/menu.dart';
import 'package:airtel/screens/OTP/one_time_password.dart';
import 'package:airtel/screens/Profile/profile.dart';
import 'package:airtel/screens/Splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const AirtelApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red[300]));
}

class AirtelApp extends StatelessWidget {
  const AirtelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airtel Clone',
      // initialRoute: "/",
      // routes: routes,
      home: Profile(),
    );
  }
}
