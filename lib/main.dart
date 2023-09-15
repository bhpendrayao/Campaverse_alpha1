import 'package:flutter/material.dart';
import 'package:loginpage/Screens/HomeScreen.dart';
import 'package:loginpage/Screens/LoginScreen.dart';
import 'package:loginpage/Screens/SignUpScreen.dart';
import 'package:loginpage/Screens/StudentCouncil.dart';
import 'package:loginpage/Screens/idspage.dart';
import 'package:loginpage/Screens/vnitclubs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/loginscreen',
      routes: {
        '/secondScreen': (context) => HomeScreen(),
        '/signUpScreen': (context) => SignUpScreen(),
        '/loginscreen':(context)=>LoginScreen(),
        '/studentcouncil': (context) => StudentCouncil(),
        '/vnitclubs': (context) => VnitClubs(),
          '/idspage' : (context) => IdsPage(),
      },
      debugShowCheckedModeBanner: false,

    );
  }
}
