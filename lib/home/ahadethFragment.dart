

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'Widgets/HadethName.dart';

class AhadethFragment extends StatelessWidget{

  List<String> ahadethName=[
    "1","2","3","4","5","6","7","8","9","10",
    "11","12","13","14","15","16","17","18","19","20",
    "21","22","23","24","25","26","27","28","29","30",
    "31","32","33","34","35","36","37","38","39","40",
    "41","42","43","44","45","46","47","48","49","50",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3,
          child:
          Image.asset(
            'assets/images/ahadethLogo.png',
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(border: Border.all(color: MyThemeData.colorAccentDark,
            width: 3,
          ),
          ),
          child: Text(
            'الأحاديث',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: ListView.separated(
            itemBuilder: (context,index){
              return HadethName(ahadethName[index],index);
            },
            separatorBuilder: (context,index){
              return Container(
                height: 1,
                color: MyThemeData.colorAccentDark,
              );
            },
            itemCount: ahadethName.length,
          ),
        ),
      ],
    );
  }
}

