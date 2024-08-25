import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "ashar";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black, // Background color of the Scaffold
      appBar: AppBar(
        title:  const Center(child: Text("Catalog App")),
        foregroundColor: Colors.white, // Font color of the AppBar title
        backgroundColor: Colors.deepPurple, // Background color of the AppBar
      ),
      body: Center(
        child: Container(
          child: Text(
            "$days Days Welcome to $name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
