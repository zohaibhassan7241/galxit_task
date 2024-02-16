import 'package:flutter/material.dart';
import 'package:galxit_task/widget/listview_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          title: const Text('Task'),
        ),
        body: const Padding(
            padding: EdgeInsets.only(top: 8.0), child: ListViewWidget()),
      ),
    );
  }
}
