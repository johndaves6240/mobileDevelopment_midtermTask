import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _numberOfClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEST1"),
      ),
      body: Center(
        child: Text("clicked times: $_numberOfClicks"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numberOfClicks++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
