import 'package:beginner_project/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      home: HomePage(),
    );
  }
}
