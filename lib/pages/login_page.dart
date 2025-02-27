import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:
        Column(
          children:[
            Image.asset("assets/image/login_image.png",fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome",
              style: TextStyle(
                fontSize: 27,
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
                hintText: "Enter Username",
                labelText: "Username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
              SizedBox(
                height: 20.0,
              ),
            ElevatedButton(onPressed: () {


            }, child: Text("Login"),
              style: TextButton.styleFrom(),
            ),

              
              
          ],
          ),
        ),

          ],
        )
    );
  }
}
