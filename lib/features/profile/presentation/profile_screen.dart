import 'package:flutter/material.dart';

import '../../../core/widgets/feature_placeholder_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderScreen(
      title: 'Profile',
      subtitle: 'Manage your account and preferences.',
      icon: Icons.person_outline_rounded,
    );
  }
}
