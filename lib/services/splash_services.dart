import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../core/routes/routes_name.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
          () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesName.authOptionPage,
              (route) => false,
        );
      },
    );
  }
}