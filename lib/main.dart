import 'package:Quiz_maker/helper/functions.dart';
import 'package:flutter/material.dart';

import 'package:Quiz_maker/views/home.dart';
import 'package:Quiz_maker/views/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _isLoggedin = false;

  @override
  void initState() {
    checkUserLoggedInStatus();
    super.initState();
  }

  checkUserLoggedInStatus()async{
    HelperFunctions.getUserLoggedInDetails().then((value){
        setState(() {
          _isLoggedin = value;
        });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:(_isLoggedin ?? false) ? Home(): SignIn(),
    );
  }
}
