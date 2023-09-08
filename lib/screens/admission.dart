import 'package:flutter/material.dart';
import 'package:sjit_app/screens/data.dart';
import 'package:google_fonts/google_fonts.dart';

class admissions extends StatefulWidget {
  const admissions({super.key});

  @override
  State<admissions> createState() => _admissionsState();
}

class _admissionsState extends State<admissions> {
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
                  "Admission Details",
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dataView("Date of Admission", ""),
                dataView("Admission allotment", ""),
                dataView("Overall Rank", ""),
                dataView("Community Rank", ""),
                dataView("Sports Admission", ""),
                dataView("Game Name", ""),
                dataView("Medium of Instruction", ""),
                Text(
                  "General Details",
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dataView("Date Of Birth", ""),
                dataView("Caste", ""),
                dataView("Parents Annual Income", ""),
                dataView("Religion", ""),
                dataView("Nationality", ""),
                dataView("Mother Tongue", ""),
                dataView("Member of(NSS/YRC/NCC/others)", ""),
                Text(
                  "Other Details",
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dataView("transfered From", ""),
                dataView("Institution Name", ""),
                dataView("Address", ""),
                dataView("Group", ""),
                dataView("Year and Month of Admission", ""),
                dataView("Year and Month of Relief", ""),
                dataView("Course Completed in Time", ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}