import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

import '../utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:
        SingleChildScrollView(
          child: Column(
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
                  height: 30.0,
                ),
              InkWell (
                onTap:() async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration (seconds: 1));
                   Navigator.pushNamed(context, Myroutes.homeRoutes);
                  },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 40 : 150,
                  height: 40,

                  alignment: Alignment.center,
                  child: changeButton ?  Icon(
                    Icons.done,color: Colors.white,
                  )
                      : Text("Login", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),),
                  decoration: BoxDecoration(
                     color: Colors.deepPurple,
                     // shape: changeButton ? BoxShape.circle
                     //    : BoxShape.rectangle,
                     borderRadius: BorderRadius.circular(changeButton ? 60: 10)
                  ),
                ),
              ),


              // ElevatedButton(onPressed: () {
              //   Navigator.pushNamed(context, Myroutes.homeRoutes);
              // }, child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              // ),



            ],
            ),
          ),

            ],
          ),
        )
    );
  }
}
