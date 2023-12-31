import 'package:flutter/material.dart';
import 'package:frema/screen/splash.dart';
import 'package:frema/theme/figma.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Project Management App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: MaterialTheme().light(),
      darkTheme: MaterialTheme().dark(),
      themeMode: ThemeMode.dark,
    );
  }
}

