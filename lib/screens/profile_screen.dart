import 'package:flutter/material.dart';
import 'package:sjit_app/screens/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sjit_app/screens/profile_moreinfo.dart';
// import 'mark_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'moreDetails');
                    },
                    child: Text(
                      'More Info',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
