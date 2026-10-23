import 'package:flutter/material.dart';

import '../widgets/pool_list_screen.dart';

class JoinedPoolScreen extends StatelessWidget {
  const JoinedPoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PoolListScreen(
      title: 'Joined Pool',
      subtitle: 'Pools you’ve been invited to.',
      action: 'Join a pool',
      image: 'assets/images/onboarding_artwork_insights.png',
    );
  }
}
