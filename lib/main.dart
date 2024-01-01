import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frema/screen/splash.dart';
import 'package:frema/theme/figma.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top],
    );

    return MaterialApp(
      title: 'School Project Management App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
      ),
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
      ),
      themeMode: ThemeMode.light,
    );
  }
}

