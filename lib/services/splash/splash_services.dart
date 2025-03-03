

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:login_clean_architecture/config/routes/routes_name.dart';

class SplahServices {
  void isLogin(BuildContext context){
    Timer(Duration(seconds: 3), () => Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route) => false));
  }
}