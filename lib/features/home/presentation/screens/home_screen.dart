import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../activity/presentation/activity_screen.dart';
import '../../../pools/presentation/screens/joined_pool_screen.dart';
import '../../../pools/presentation/screens/manage_pool_screen.dart';
import '../../../profile/presentation/profile_screen.dart';
import '../widgets/home_bottom_navigation.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tab = 1;

  void _open(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => screen));
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const ActivityScreen(),
      DashboardScreen(
        onNotificationsTap: () => _message('No new notifications'),
        onManagePoolTap: () => _open(const ManagePoolScreen()),
        onJoinedPoolTap: () => _open(const JoinedPoolScreen()),
      ),
      const ProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF2F1F8), Color(0xFFF0F4CE), Color(0xFFF4F2F7)],
          ),
        ),
        child: SafeArea(
          child: IndexedStack(index: _tab, children: pages),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: HomeBottomNavigation(
          selectedIndex: _tab,
          onTabSelected: (index) => setState(() => _tab = index),
        ),
      ),
    );
  }

  void _message(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
