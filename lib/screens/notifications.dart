import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Notifications'),
            centerTitle: true,
            backgroundColor: Colors.greenAccent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
          ),
          body: Center(
            child: const Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
