import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/pages/sign_outpage.dart';
import 'package:first_app/utilis/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       // Specify the initial route
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
    debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoutes,
      routes: {
        '/': (context) => const LoginPage(),
        Myroutes.signinRoutes: (context) => const Signpage(),
        Myroutes.homeRoutes: (context) => const HomePage(),
        Myroutes.loginRoutes: (context) => const LoginPage(),
      },
    );
  }
}
