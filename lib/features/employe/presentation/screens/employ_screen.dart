import 'package:flutter/material.dart';

class EmployeScreen extends StatelessWidget {
  final String name;
  const EmployeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [Text(name)])),
    );
  }
}
