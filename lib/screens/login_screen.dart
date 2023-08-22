import 'package:flutter/material.dart';
import 'package:sjit_app/screens/home_screen.dart';
// import 'package:sjit_app/screens/profile_screen.dart';
// import 'profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF121536),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(30), // Adjust the radius as needed
                      bottomRight:
                          Radius.circular(30), // Adjust the radius as needed
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        "images/clgLogo.png",
                        width: 175,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        "images/clgName.png",
                        width: 275,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Image.asset(
                        "images/autoName.png",
                        width: 150,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Roll No.',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .black), // Color of border when not focused
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.black), // Color of border when focused
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .black), // Color of border when not focused
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.black), // Color of border when focused
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // White background color
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black), // White text color
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(30), // Adjust the radius as needed
                        topRight:
                            Radius.circular(30), // Adjust the radius as needed
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image.asset(
                            "images/GroupName.png",
                            width: 250,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
