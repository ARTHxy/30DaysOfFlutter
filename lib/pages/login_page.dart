import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  // const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Every Widget has it's key :
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
