import 'dart:async';

import 'package:flutter/material.dart';

import '../../home/presentation/screens/home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/splash_screen.dart';

class FinLotFlow extends StatefulWidget {
  const FinLotFlow({super.key});

  @override
  State<FinLotFlow> createState() => _FinLotFlowState();
}

class _FinLotFlowState extends State<FinLotFlow> {
  Timer? _splashTimer;
  bool _showSplash = true;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _splashTimer = Timer(const Duration(milliseconds: 1600), () {
      if (mounted) setState(() => _showSplash = false);
    });
  }

  @override
  void dispose() {
    _splashTimer?.cancel();
    super.dispose();
  }

  void _nextPage() {
    if (_page < 2) {
      setState(() => _page++);
      return;
    }
    Navigator.of(context).pushReplacement(MaterialPageRoute<void>(builder: (_) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    if (_showSplash) return const SplashScreen();
    return OnboardingScreen(page: _page, onContinue: _nextPage);
  }
}
