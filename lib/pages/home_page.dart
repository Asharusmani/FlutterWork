import 'package:first_app/models/catalog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "ashar";
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async{
final catalogJson = await rootBundle.loadString("assets/files/catalog.jason");
final decodedData = jsonDecode(catalogJson);
final productsData =  decodedData["products"];
if (kDebugMode) {
  print(productsData);
}

  }

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
