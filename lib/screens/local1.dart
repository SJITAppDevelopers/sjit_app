import 'package:flutter/material.dart';
import 'package:sjit_app/screens/data.dart';
import 'package:google_fonts/google_fonts.dart';
class local1 extends StatefulWidget {
  const local1({super.key});

  @override
  State<local1> createState() => _local1State();
}

class _local1State extends State<local1> {
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
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipOval(
                    child: Image.asset(
                      "images/avatar.jpg",
                      width: 150,
                    ),
                  ),
                ),
                Text(
                  "Local Guardian 1",
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dataView("Roll No.", ""),
                dataView("Reg. No.", ""),
                dataView("Name", ""),
                dataView("Gender", ""),
                dataView("Blood Group", ""),
                dataView("Batch", ""),
                dataView("Course", ""),
                dataView("Department", ""),
                dataView("Section", ""),
                dataView("Mobile No.", ""),
                dataView("Mail Id", ""),
                dataView("Food", ""),
                dataView("Accomodation", ""),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipOval(
                    child: Image.asset(
                      "images/avatar.jpg",
                      width: 150,
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