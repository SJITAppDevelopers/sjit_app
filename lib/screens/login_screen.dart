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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          height: screenHeight,
          color: const Color(0xFF121536),
          child: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                verticalDirection: VerticalDirection.down,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.025,
                        ),
                        Image.asset(
                          "images/clgLogo.png",
                          width: screenHeight * 0.2,
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Image.asset(
                          "images/clgName.png",
                          width: screenHeight * 0.3,
                        ),
                        SizedBox(
                          height: screenHeight * 0.001,
                        ),
                        Image.asset(
                          "images/autoName.png",
                          width: screenHeight * 0.2,
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight > 800
                        ? screenHeight * 0.05
                        : screenHeight * 0.05,
                  ),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: screenHeight * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05,
                        right: screenWidth * 0.05,
                        top: screenHeight * 0.03),
                    child: TextFormField(
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
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.05,
                        right: screenWidth * 0.05,
                        bottom: screenHeight * 0.01,
                        top: screenHeight * 0.03),
                    child: TextFormField(
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
                      obscureText: true,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // White background color
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black), // White text color
                    ),
                    onPressed: () {
                      String username = _rollNo.text;
                      String password = _password.text;
                      if (username.isEmpty || password.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Warning'),
                              content: const Text(
                                  'Username and password cannot be empty.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        print('Username: $username');
                        print('Password: $password');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                  SizedBox(
                    height: screenHeight*0.01
                        
                       
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: screenHeight * 0.03,
                                bottom: screenHeight * 0.02),
                            child: Image.asset(
                              "images/GroupName.png",
                              width: screenHeight * 0.3,
                            ),
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
        //),
      ),
    );
  }
}
