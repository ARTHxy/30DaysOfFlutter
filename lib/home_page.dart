import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
//  const HomePage({super.key});

  final int days = 30;
  final String name = "Arth Singh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffhold is a Material's component
      appBar: AppBar(
        title: Text("Catalog App By ${name}")
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days Flutter Code by $name: "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
