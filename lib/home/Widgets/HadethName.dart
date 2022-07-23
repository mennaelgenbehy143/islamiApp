import 'package:flutter/material.dart';
import 'package:islami/home/souraDetails/HadethDetails.dart';

class HadethName extends StatelessWidget {
  String hadethName;
  int index;
  HadethName(this.hadethName,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.ROUTE_NAME,
            arguments: HadethDetailsArgs(hadethName,index+1));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text('الحديث رقم '+hadethName,
          textAlign:TextAlign.center,
          style: TextStyle(fontSize: 25,
          color: Colors.white,),
        ),
      ),
    );
  }
}
class HadethDetailsArgs{
  String hadethName;
  int index;
  HadethDetailsArgs(this.hadethName,this.index);
}