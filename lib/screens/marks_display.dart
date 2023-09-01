import 'package:flutter/material.dart';

class MarksDisplay extends StatefulWidget {
  const MarksDisplay({Key? key}) : super(key: key);

  @override
  State<MarksDisplay> createState() => _MarksDisplayState();
}

class _MarksDisplayState extends State<MarksDisplay> {
  final List<String> subjects = ['Math', 'Science', 'physics','abcd'];
  final List<int> marks = [90, 85, 92,62,989];

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
      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Subjects')),
            DataColumn(label: Text('Marks')),
          ],
          rows: List<DataRow>.generate(
            subjects.length,
            (index) {
              return DataRow(
                cells: [
                  DataCell(Text(subjects[index])),
                  DataCell(Text(marks[index].toString())),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
