import 'package:flutter/material.dart';
import 'package:kwiku/component/authentification/login.dart';
import 'package:kwiku/component/authentification/register.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Menu'),
              centerTitle: true,
              backgroundColor: Colors.greenAccent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              )),
            ),
            body: Center(
                child: Column(
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyRegister()),
                      );
                    },
                    child: Text('Connexion'))
              ],
            ))));
  }
}
