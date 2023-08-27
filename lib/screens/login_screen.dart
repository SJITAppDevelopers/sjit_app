import 'package:flutter/material.dart';

import 'package:sjit_app/screens/home_screen.dart';
// import 'profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _rollNo = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _rollNo.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF121536),
          child: SingleChildScrollView(
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
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Image.asset(
                          "images/clgLogo.png",
                          width: 160,
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Image.asset(
                          "images/clgName.png",
                          width: 275,
                        ),
                        SizedBox(
                          height: screenHeight * 0.001,
                        ),
                        Image.asset(
                          "images/autoName.png",
                          width: 150,
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  const Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextField(
                      controller: _rollNo,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 20),
                    child: TextField(
                      controller: _password,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
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
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // White background color
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black), // White text color
                    ),
                    onPressed: () {
                      // Access the username and password here
                      String username = _rollNo.text;
                      String password = _password.text;

                      // Now you can use the username and password variables as needed
                      print('Username: $username');
                      print('Password: $password');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: const Text('Submit'),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
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
                          SizedBox(
                            height: screenHeight*0.04,
                          ),
                          Image.asset(
                            "images/GroupName.png",
                            width: 250,
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
