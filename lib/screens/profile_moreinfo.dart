import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sjit_app/screens/data.dart';

class moreinfo extends StatefulWidget {
  const moreinfo({super.key});

  @override
  State<moreinfo> createState() => _moreinfoState();
}

class _moreinfoState extends State<moreinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF121536),
        title: null,
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'academics');
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'images/profile_academic.png',
                          height: 90,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'admission');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                      children: [
                        Image.asset(
                          'images/profile_admission.png',
                          height: 90,
                          width: 90,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'parents');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                      children: [
                        Image.asset(
                          'images/profile_parent.png',
                          height: 90,
                          width: 90,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'local1');
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'images/profile_guardian.png',
                          height: 90,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
