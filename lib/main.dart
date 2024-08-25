import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Changed Material to Scaffold for proper layout structure
        body: Center(
          child: Container(
            child: const Text("Welcome to Flutter"),
          ),
        ),
      ),
    );
  }
}
