import 'package:flutter/material.dart';
import 'package:islami/home/homeScreen.dart';
import 'package:islami/home/souraDetails/HadethDetails.dart';
import 'package:islami/home/souraDetails/SuraDetails.dart';
import 'package:islami/splashScreen.dart';

class MyThemeData{

  static Color colorPrimaryDark =Color.fromRGBO(20, 26, 46, 1.0);
  static Color colorAccentDark =Color.fromRGBO(183, 147, 95, 1.0);

}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MyThemeData.colorPrimaryDark,
        accentColor: MyThemeData.colorAccentDark,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.ROUTE_NAME:(context)=>SplashScreen(),
        HomeScreen.ROUTE_NAME:(context)=>HomeScreen(),
        SuraDetails.ROUTE_NAME:(context)=>SuraDetails(),
        HadethDetails.ROUTE_NAME:(context)=>HadethDetails(),
      },
      initialRoute: SplashScreen.ROUTE_NAME,
    );
  }
}

