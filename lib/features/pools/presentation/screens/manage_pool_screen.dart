import 'package:flutter/material.dart';

import '../widgets/pool_list_screen.dart';

class ManagePoolScreen extends StatelessWidget {
  const ManagePoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PoolListScreen(
      title: 'Manage Pool',
      subtitle: 'Your pools and draw progress.',
      action: 'Create a pool',
      image: 'assets/images/onboarding_artwork_pool.png',
    );
  }
}
