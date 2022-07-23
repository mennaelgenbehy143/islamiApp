import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../main.dart';
import '../Widgets/HadethName.dart';

class HadethDetails extends StatefulWidget {
  static String ROUTE_NAME = 'Hadeth Details';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> hadethLines=[];

  @override
  Widget build(BuildContext context) {
    HadethDetailsArgs args = ModalRoute.of(context)!.settings.arguments as HadethDetailsArgs;
    if(hadethLines.length==0){readHadethFile('assets/hadeth/'+'h'+args.index.toString()+'.txt');}
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill,
          image: AssetImage('assets/images/bg.png',)
          ,),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(iconTheme:IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'إسلامي',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: getMainView(),
      ),
    );
  }
  Widget getMainView(){
    if(hadethLines.length==0){
      return Center(child: CircularProgressIndicator());
    }else{
      return Container(
        margin: EdgeInsets.only(right: 16,left: 16,
          bottom: MediaQuery.of(context).size.height*.1,
        ),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color.fromRGBO(20, 26, 46, .7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView.separated(
          itemBuilder: (context,index){
          return Text(hadethLines[index],
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 25,
              color: MyThemeData.colorAccentDark
            ),
          );
        },
          separatorBuilder: (context,index){
            return Container(
              height: 1,
              color: MyThemeData.colorAccentDark,
            );
          },
          itemCount: hadethLines.length,
        ),
      );
    }
  }
  void readHadethFile(String fileName)async{
    String HadethContent = await rootBundle.loadString(fileName);
    print(HadethContent);
    hadethLines = HadethContent.split('\n');
    setState(() {

    });
  }
}
