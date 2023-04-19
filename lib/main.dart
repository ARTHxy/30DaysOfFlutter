import 'package:beginner_project/pages/home_page.dart';
import 'package:beginner_project/pages/login_page.dart';
import 'package:beginner_project/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  // GITHUB By Command Prompt :

  /*
   git init
   git add .
   git commit -m "First Commit "
   */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // var days = 30;
    // Datatype num = num can take int and double too
    //  const name = "Arth Singh";
    // var = var can contain any value, compile will decide automatically
    // Try to use var ...
    // const = const value can not be change

    // Final can be modified while const can't

    return MaterialApp(
      //  home: HomePage(), comment cz of "/"
      themeMode: ThemeMode.light, // Can be light/dark also
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/Home", // For opening front page
      routes: {
        "/": (context) => // By Default
            LogInPage(), // "/" means home route, use only one either "/" or homepage()
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogInPage()
      }, // Ways ( Raste )  (Key : Value) (String : Function)
    );
  }
}
