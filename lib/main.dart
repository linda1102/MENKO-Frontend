
import 'package:flutter/material.dart';

import 'Config/app_theme.dart';
import 'splash/splashScreen.dart';

class MenkoApp extends StatelessWidget {
  const MenkoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MENKO Noodle House',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
      },
    );
  }
}

void main() {
  runApp(const MenkoApp());
}
