import 'package:flutter/material.dart';
// import 'package:sjit_app/screens/mark_screen.dart';
// import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF121536),
        title: null,
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                // padding:const EdgeInsets.only(top: 5,right:10),
                child: Image.asset('images/technologyLogo.png',width: 100,height: 100,),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE7E7E7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,  // space between logo and name
                children: [
                  Image.asset('images/technologyLogo.png',width: 70,height: 70,),
                  Image.asset('images/clgName.png',width: 250,height: 100,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/profile.png',
                  height: 90,
                  width: 100,
                ),
                Image.asset(
                  'images/attendance.png',
                  height: 90,
                  width: 90,
                ),
                Image.asset(
                  'images/mark.png',
                  height: 90,
                  width: 90,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/notes.png',
                  height: 90,
                  width: 90,
                ),
                Image.asset(
                  'images/events.png',
                  height: 90,
                  width: 90,
                ),
                Image.asset(
                  'images/forms.png',
                  height: 90,
                  width: 90,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/attendance.png',
                  height: 90,
                  width: 90,
                ),
                Image.asset(
                  'images/events.png',
                  height: 90,
                  width: 90,
                ),
                Image.asset(
                  'images/mark.png',
                  height: 90,
                  width: 90,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

