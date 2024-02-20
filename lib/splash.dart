import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        Timer(Duration(seconds:2),(){
          Navigator.push(context,MaterialPageRoute(builder:(context) =>Questions() ));
        } );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.ESdmLNnmK1nNnZXUMaNTQQAAAA?rs=1&pid=ImgDetMain',
                ),
              ),
              ),
          SizedBox(height:10),
          Text(
            'Facts',
            style: TextStyle(color: Colors.amber,fontSize:30 ),
          )
        ],
      ),
    );
  }
}
