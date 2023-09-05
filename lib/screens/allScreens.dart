import 'package:flutter/material.dart';
import 'package:kwiku/screens/cards.dart';
import 'package:kwiku/screens/home.dart';
import 'package:kwiku/screens/menu.dart';
import 'package:kwiku/screens/notifications.dart';
import 'package:kwiku/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    UserScreen(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kwiku'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
              );
            },
            icon: const Icon(
              Icons.notifications_active_outlined,
            ),
          ),
        ],
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Menu()),
            );
          },
          icon: const Icon(Icons.menu),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //selectedLabelStyle: TextStyle(color: Colors.greenAccent),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person_2_outlined, color: Colors.white, size: 35),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined, color: Colors.white, size: 35),
              label: 'Card'),
        ],
        //selectedLabelStyle: const TextStyle(color: Colors.greenAccent), // Changer la couleur des labels sélectionnés
        // unselectedLabelStyle: const TextStyle(color: Colors.black), // Changer la couleur des labels non sélectionnés
        //unselectedIconTheme: const IconThemeData(color:Color.fromARGB(255, 223, 40, 40),),//Changer le style de l'icône non selectionnée
      ),
    );
  }
}
