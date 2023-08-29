import 'package:flutter/material.dart';
import 'profile_screen.dart';

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
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset('images/technologyLogo.png'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFE7E7E7),
      body: SafeArea(
        child: Container(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('images/clgName.png'),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  // Set the width to your desired value
                  height: 100,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 27,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                        child: Image.asset('images/profile.png'),
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      Image.asset('images/attendance.png'),
                      const SizedBox(
                        width: 27,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                        child: Image.asset('images/mark.png'),
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  // Set the width to your desired value
                  height: 100,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 27,
                      ),
                      Image.asset('images/notes.png'),
                      const SizedBox(
                        width: 22,
                      ),
                      Image.asset('images/events.png'),
                      const SizedBox(
                        width: 22,
                      ),
                      Image.asset('images/forms.png'),
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
