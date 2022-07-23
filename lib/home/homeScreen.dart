import 'package:flutter/material.dart';
import 'package:islami/home/quranFragment.dart';
import 'package:islami/home/radioFragment.dart';
import 'package:islami/home/tasbehFragment.dart';
import 'package:islami/main.dart';

import 'ahadethFragment.dart';

class HomeScreen extends StatefulWidget {
  static String ROUTE_NAME = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
              image: AssetImage('assets/images/bg.png',)
            ,),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              'إسلامي',
              style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        bottomNavigationBar:
        Theme(data: Theme.of(context).copyWith(canvasColor: MyThemeData.colorPrimaryDark,),
          child: BottomNavigationBar(iconSize: 30,
            selectedItemColor: MyThemeData.colorAccentDark,
            showSelectedLabels: true,
            onTap: (index){
            selectedIndex=index;
            setState(() {

            });
            },

            currentIndex: selectedIndex,
            items: const [
            BottomNavigationBarItem(
              label:'القرآن',
          icon: ImageIcon(
            AssetImage('assets/images/moshaf.png',),
          ),
            ),
            BottomNavigationBarItem(
                label:'الأحاديث',
                icon: ImageIcon(
                    AssetImage('assets/images/quran.png',),
                ),
            ),
            BottomNavigationBarItem(
                label:'التسبيح',
                icon: ImageIcon(
                    AssetImage('assets/images/sebha.png',),
                ),
            ),
            BottomNavigationBarItem(
                label:'الراديو',
                icon: ImageIcon(
                    AssetImage('assets/images/radio.png',),
                ),
            ),
          ],
          ),
        ),
        body: GetMainFragment(),
      ),
    );
  }
   GetMainFragment(){
    if(selectedIndex==0){
      return QuranFragment();
    }else if(selectedIndex==1){
      return AhadethFragment();
    }else if(selectedIndex==2){
      return TasbehFragment();
    }else if(selectedIndex==3){
      return RadioFragment();
    }
  }
}
