import 'package:flutter/material.dart';
import 'package:first_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "ashar";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,//Background color of the Scaffold
      appBar: AppBar(
        title: Center(child: const Text("Catalog App",style: TextStyle(color: Colors.black ),)),
        // foregroundColor: Colors.black, // Font color of the AppBar title
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.black),// Background color of the AppBar
      ),
      body: Center(
        child: Container(
          child: Text(
            "$days Days Welcome to $name",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      drawer: const Mydrawer(

      ),
    );
  }
}
