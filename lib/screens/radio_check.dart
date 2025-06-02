import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = true;
  String selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Visibility(
            visible: isSelected,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            child: Container(
              color: const Color.fromARGB(255, 7, 255, 11),
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          CheckboxListTile(
            title: Text("show / hide"),
            value: isSelected,
            onChanged: (value) {
              setState(() {
                isSelected = value!;
              });
            },
          ),
          SizedBox(height: 60),
          RadioListTile<String>(
            fillColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 221, 6, 6),
            ), // circle color border & dot circle color
            shape: Border.all(color: Colors.black, width: 1),
            title: Text("Flutter"),
            value: "Flutter",
            groupValue: selectedValue,
            onChanged: (v) {
              setState(() {
                selectedValue = v!;
              });
            },
          ),
          RadioListTile<String>(
            fillColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 221, 6, 6),
            ), // circle color border & dot circle color
            shape: Border.all(color: Colors.black, width: 1),
            title: Text("Android"),
            value: "Android",
            groupValue: selectedValue,
            onChanged: (v) {
              setState(() {
                selectedValue = v!;
              });
            },
          ),
          RadioListTile<String>(
            fillColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 221, 6, 6),
            ), // circle color border & dot circle color
            shape: Border.all(color: Colors.black, width: 1),
            title: Text("React Native"),
            value: "React Native", // value that will return when selected
            groupValue: selectedValue,
            onChanged: (v) {
              setState(() {
                selectedValue = v!;
              });
            },
          ),
          RadioListTile<String>(
            fillColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 221, 6, 6),
            ), // circle color border & dot circle color
            shape: Border.all(color: Colors.black, width: 1),
            title: Text("IOS"),
            value: "IOS",
            groupValue: selectedValue,
            onChanged: (v) {
              setState(() {
                selectedValue = v!;
              });
            },
          ),
        ],
      ),
    );
  }
}
