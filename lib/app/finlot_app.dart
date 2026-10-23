import 'package:flutter/material.dart';

import '../features/onboarding/presentation/onboarding_flow.dart';
import 'app_theme.dart';

class FinLotApp extends StatelessWidget {
  const FinLotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinLot',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const FinLotFlow(),
    );
  }
}
