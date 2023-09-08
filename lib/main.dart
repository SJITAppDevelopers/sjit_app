import 'package:flutter/material.dart';
import 'package:sjit_app/screens/academic.dart';
import 'package:sjit_app/screens/admission.dart';
import 'package:sjit_app/screens/home_screen.dart';
import 'package:sjit_app/screens/login_screen.dart';
import 'package:sjit_app/screens/mark_screen.dart';
import 'package:sjit_app/screens/marks_display.dart';
import 'package:sjit_app/screens/parents.dart';
import 'package:sjit_app/screens/profile_moreinfo.dart';
import 'package:sjit_app/screens/profile_screen.dart';
// import 'package:sjit_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen(),
        'profile': (context) => const ProfileScreen(),
        'marks': (context) => const DropdownMenuExample(),
        'marksDisplay':(context)=>const MarksDisplay(),
        'moreDetails' :(context)=>const moreinfo(),
        'academics' :(context)=>const academicState(),
        'admission' :(context)=>const admissions(),
        'parents' :(context)=>const parents(),
      
      },
    );
  }
}
