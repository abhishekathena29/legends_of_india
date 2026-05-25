import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const FreedomJourneyApp());
}

class FreedomJourneyApp extends StatelessWidget {
  const FreedomJourneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Freedom Journey',
      theme: AppTheme.theme,
      home: const HomeScreen(),
    );
  }
}
