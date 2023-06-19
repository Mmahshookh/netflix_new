import 'package:flutter/material.dart';
import 'package:netflix_new/screens/pages/screenBottomNav/screenBottomNav.dart';
import 'package:netflix_new/screens/pages/screenHome/screenHomePage.dart';
import 'package:netflix_new/screens/pages/screenNew&hot/screenNew&hot.dart';
import 'package:netflix_new/screens/pages/screenSearch/2ndScreenSerch.dart';
import 'package:netflix_new/screens/pages/screenSearch/screenSearch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: Colors.black
        ),
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      ),
      home: ScreenNewAndHot(),
    );
  }
}
