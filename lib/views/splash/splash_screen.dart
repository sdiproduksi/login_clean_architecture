import 'package:flutter/material.dart';
import 'package:login_clean_architecture/config/components/internet_exception_widget.dart';
import 'package:login_clean_architecture/config/components/loading_widget.dart';
import 'package:login_clean_architecture/config/components/round_button.dart';
import 'package:login_clean_architecture/config/routes/routes_name.dart';
import 'package:login_clean_architecture/data/exception/app_exception.dart';
import 'package:login_clean_architecture/services/splash/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplahServices _splahServices = SplahServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _splahServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     throw NoInternetException();
      //   },
      // ),
      body: SafeArea(
        child: Center(
          child: Text('Splash Screen', style: TextStyle(fontSize: 50),),
        ),
      ),
    );
  }
}
