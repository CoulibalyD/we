import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 45,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
