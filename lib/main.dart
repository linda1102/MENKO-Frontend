import 'package:flutter/material.dart';

import 'config/app_theme.dart';

void main() {
  runApp(const MenkoApp());
}

class MenkoApp extends StatelessWidget {
  const MenkoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MENKO Noodle House',
      theme: AppTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('MENKO Noodle House'),
        ),
      ),
    );
  }
}