import 'package:flutter/material.dart';
import 'package:sjit_app/screens/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class academicState extends StatefulWidget {
  const academicState({super.key});

  @override
  State<academicState> createState() => _academicStateState();
}

class _academicStateState extends State<academicState> {
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
              children: [
                Text(
                  "Academics",
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dataView("10th School", ""),
                dataView("Marks Obtained", ""),
                dataView("Board", ""),
                dataView("Medium of Instruction", ""),
                dataView("Year of Passing", ""),
                dataView("12th School", ""),
                dataView("Marks Obtained", ""),
                dataView("Board", ""),
                dataView("Medium of Instruction", ""),
                dataView("Year Of Passing", ""),
                dataView("Diploma College", ""),
                dataView("Marks Obtained", ""),
                dataView("Board", ""),
                dataView("Medium of Instruction", ""),
                dataView("Year Of Passing", ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
