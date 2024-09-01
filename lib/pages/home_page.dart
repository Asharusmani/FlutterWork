import 'package:first_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "ashar";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(30, (index) => CatalogModel.items[0]);
    return  Scaffold(
      backgroundColor: Colors.white,//Background color of the Scaffold
      appBar: AppBar(
        title: Center(child: const Text("Catalog App",style: TextStyle(color: Colors.black ),)),
        // foregroundColor: Colors.black, // Font color of the AppBar title
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.black),// Background color of the AppBar
      ),
      body: ListView.builder(itemCount: dummyList.length,
          itemBuilder: (context,index){
        return ItemWidget(
          item: dummyList[index],
        );
          },),
      drawer: const Mydrawer(

      ),
    );
  }
}
