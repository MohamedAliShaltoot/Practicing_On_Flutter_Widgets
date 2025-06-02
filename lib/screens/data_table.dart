import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({super.key});

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(
                  headingRowAlignment: MainAxisAlignment.start,
                  label: Row(
                    children: [
                      Checkbox(
                        value: isSelected,
                        onChanged: (v) {
                          setState(() {
                            isSelected = v!;
                          });
                        },
                      ),
                      Text('Project Name'),
                    ],
                  ),
                ),
                DataColumn(label: Text('Project Description')),
                DataColumn(label: Text('Project Status')),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('AI Generator')),
                    DataCell(Text('Create a new project')),
                    DataCell(Text('In Progress')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Task Manager')),
                    DataCell(Text('Manage daily tasks')),
                    DataCell(Text('Completed')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Weather App')),
                    DataCell(Text('Show weather forecast')),
                    DataCell(Text('Pending')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/*
rows: const <DataRow>[
            DataRow(cells: [
              DataCell(Text('AI Generator')),
              DataCell(Text('Create a new project')),
              DataCell(Text('In Progress')),
            ]),
            DataRow(cells: [
              DataCell(Text('Task Manager')),
              DataCell(Text('Manage daily tasks')),
              DataCell(Text('Completed')),
            ]),
            DataRow(cells: [
              DataCell(Text('Weather App')),
              DataCell(Text('Show weather forecast')),
              DataCell(Text('Pending')),
            ]),
          ],

*/