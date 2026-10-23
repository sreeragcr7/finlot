import 'package:flutter/material.dart';

import '../../../core/widgets/feature_placeholder_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderScreen(
      title: 'Activity',
      subtitle: 'Your pool contributions and draw history.',
      icon: Icons.swap_horiz_rounded,
    );
  }
}
