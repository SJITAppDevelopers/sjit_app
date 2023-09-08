import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dataView extends StatefulWidget {
  const dataView(this.heading, this.data, {super.key});
  final String heading;
  final String data;

  @override
  State<dataView> createState() => _dataViewState();
}

class _dataViewState extends State<dataView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5, bottom: 1),
              child: Text(
                widget.heading,
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color.fromARGB(
                    255, 214, 228, 240), // Set your desired background color
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.data,
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
