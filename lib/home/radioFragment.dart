import 'package:flutter/material.dart';

class RadioFragment extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/radioLogo.png',
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'إذاعة القرآن الكريم',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/images/Group 5.png',
          ),
        ],
      ),
    );
  }
}
