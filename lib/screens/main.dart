import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

// ignore: camel_case_types
class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: customColor.card,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 220,
              ),
              Text('Firebase Todo App',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
            ],
          ),
          // child: Column(
          //   children: [
          //     Row(),
          //     Column(
          //       children: [
          //         Container(
          //
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
