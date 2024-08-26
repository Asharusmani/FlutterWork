import 'package:flutter/material.dart';

class Signpage extends StatelessWidget {
  const Signpage({super.key});



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset("assets/image/signout_image.png"),
        SizedBox(
          height: 20.0,
        ),
        const Text("Sign In Page", style: TextStyle(
          fontSize: 25,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(
          height: 20.0,
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

              }, child: Text('Sign In'),style: TextButton.styleFrom(),)
          ],),
        )
      ],
      )
    );
  }
}
