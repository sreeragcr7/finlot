import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const ink = Color(0xFF161812);
  static const lime = Color(0xFFA8CE00);
  static const cardLime = Color(0xFFE2EF73);
  static const canvas = Color(0xFFF4F5F0);
  static const muted = Color(0xFF777A73);

  static const pageGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFD5ECD7), Color(0xFFF1F6D7), Colors.white],
    stops: [0, .46, 1],
  );

  static const onboardingGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFD5ECD7), Color(0xFFF1F6D7), Colors.white],
    stops: [0, .4, .68],
  );
}
