import 'package:flutter/material.dart';
import 'package:kwiku/component/intro/introductionScreen.dart';
import 'package:kwiku/component/splash/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kwiku',
        home: show ? IntroScreen() : const SplashScreen());
  }
}
