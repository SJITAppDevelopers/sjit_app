import 'package:flutter/material.dart';

const List<String> list = <String>['Sem 1', 'Sem 2', 'Sem 3', 'Sem 4', 'Sem 5', 'Sem 6', 'Sem 7', 'Sem 8'];
const List<String> modelList = <String>['Model 1', 'Model 2', 'Model 3'];


class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;
  String modelDropdownValue = modelList.first;

  void _handleSubmit() {
    // Perform actions when the submit button is pressed
    print('Selected Value: $dropdownValue');
    print('Selected Model: $modelDropdownValue');
  }

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
      body : Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownMenu<String>(
            initialSelection: dropdownValue,
            onSelected: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
          SizedBox(height: 20),
          DropdownMenu<String>(
            initialSelection: modelDropdownValue,
            onSelected: (String? value) {
              setState(() {
                modelDropdownValue = value!;
              });
            },
            dropdownMenuEntries: modelList.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _handleSubmit,
            child: Text('Submit'),
          ),
        ],
          ),
      ),
    );
  }
}
