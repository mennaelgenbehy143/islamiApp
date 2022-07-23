import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/main.dart';

class TasbehFragment extends StatefulWidget {
  @override
  State<TasbehFragment> createState() => _TasbehFragmentState();
}

class _TasbehFragmentState extends State<TasbehFragment> {
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];

  int counter = 0;
  int x = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [

            Image.asset(
              'assets/images/sebhaLogo.png',
            ),

            SizedBox(
              height: 10,
            ),
            Text(
              'عدد التسبيحات',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 60,
              height: 70,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text('$counter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),


            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                    backgroundColor: MaterialStateProperty.all(MyThemeData.colorAccentDark),
                ),
                onPressed: () {
                  setState(() {counterNumber();
                    counter++;

                  });
                },
                child: Center(
                  child: Text(azkar[x],
                    style: TextStyle(
                      fontSize: 25,
                      color: MyThemeData.colorPrimaryDark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),),
            )
          ],
        ),
      ),
    );
  }

   counterNumber(){
      for(int i=0; i<=azkar.length; i++) {
        if (counter == 33) {
          x++;
          counter = 0;
        }
         if(x==3){
           x=0;
         }
      }
  }
}
