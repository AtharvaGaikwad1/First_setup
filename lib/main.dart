import 'package:crow_funding/screens/Signup.dart';
import 'package:crow_funding/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import './screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ReadexPre',
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
