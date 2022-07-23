import 'package:flutter/material.dart';
import 'package:islami/home/homeScreen.dart';

class SplashScreen extends StatelessWidget {
  static String ROUTE_NAME = 'splash';

  @override
  Widget build(BuildContext context) {
    NavigateToHome(context, HomeScreen.ROUTE_NAME);
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset('assets/images/Group 8.png',
            fit: BoxFit.fill,),
      ),
    );
  }
  void NavigateToHome(BuildContext context,String screenName){

    Future.delayed(Duration(seconds: 2),(){
    Navigator.pushReplacementNamed(context, screenName);
    });
  }
}
