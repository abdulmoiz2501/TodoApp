import 'package:todo_app/constants/materialColor.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/constants/materialColor.dart';
import 'package:todo_app/screens/MainMenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text(snapshot.error.toString())),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TodoList(),
          theme: ThemeData(
            scaffoldBackgroundColor: customColor.scaffold,
              primarySwatch:kPrimaryColor,
          ),
        );
      },
    );
  }
}