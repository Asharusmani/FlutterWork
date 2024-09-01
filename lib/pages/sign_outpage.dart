import 'package:flutter/material.dart';

class Signpage extends StatelessWidget {
  const Signpage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/image/signout_image.png",fit: BoxFit.cover,),

          const Text("Sign Up Page", style: TextStyle(
            fontSize: 25,
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter the Name",
                  labelText: "Name",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter the Phone Number",
                  labelText: "Phone Number",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter the Email",
                  labelText: "Email",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter the Password",
                  labelText: "Password",
                ),
              ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {
        
                }, child: Text('Sign Up'),style: TextButton.styleFrom(),),
                SizedBox(
                  height: 20.0,
                ),
            ],),
          )
        ],
        ),
      )
    );
  }
}
