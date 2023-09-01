import 'package:flutter/material.dart';

// ignore: camel_case_types
class marksDisplay extends StatefulWidget {
  const marksDisplay({super.key});

  @override
  State<marksDisplay> createState() => _marksDisplayState();
}

// ignore: camel_case_types
class _marksDisplayState extends State<marksDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
    );
  }
}