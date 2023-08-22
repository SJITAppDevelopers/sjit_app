import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return(
     Scaffold(
        backgroundColor: Color(0xFFE7E7E7),
        body: SafeArea(
          child: Container(
            child:Column(
              children: [ 
                Row(
                children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xFF121536),
                      height: 70,
                      // child: const Row(
                      //   children: [Icon(Icons.abc),],
                      // ),
                      child: Row(children: [
                        Image.asset('images/technologyLogo.png'),
                        const SizedBox(width: 250,),
                        Image.asset('images/technologyLogo.png'),
                    ]),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Image.asset('images/clgName.png'),
              Column(children: [
                Container(
                   // Set the width to your desired value
                  height: 100,
                  child:Row(children: [
                    Image.asset('images/profile.png'),
                    Image.asset('images/attendance.png'),
                    Image.asset('images/mark.png'),
                  ],),
                ),
                Container(
                   // Set the width to your desired value
                  height: 100,
                  child:Row(children: [
                    Image.asset('images/notes.png'),
                    Image.asset('images/events.png'),
                    Image.asset('images/forms.png'),
                  ],),
                )
              ],)
              ]
            ),
          ),
        ),
      ));
  }
}

