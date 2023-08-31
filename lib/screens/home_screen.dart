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
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset('images/technologyLogo.png'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFE7E7E7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/clgName.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset(
                    'images/profile.png',
                    height: 90,
                    width: 100,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'profile');
                  },
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
          ],
        ),
      ),
    );
  }
}
