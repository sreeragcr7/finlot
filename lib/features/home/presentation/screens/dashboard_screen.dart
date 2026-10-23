import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../widgets/dashboard_pool_card.dart';
import '../widgets/pool_section_pill.dart';
import '../widgets/upcoming_draw_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    required this.onNotificationsTap,
    required this.onManagePoolTap,
    required this.onJoinedPoolTap,
    super.key,
  });

  final VoidCallback onNotificationsTap;
  final VoidCallback onManagePoolTap;
  final VoidCallback onJoinedPoolTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(17, 38, 17, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 39,
                height: 39,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: const Color(0xFFFFDDB5), borderRadius: BorderRadius.circular(11)),
                child: Image.asset('assets/images/home_avatar.png', fit: BoxFit.cover),
              ),
              const Spacer(),
              IconButton(
                tooltip: 'Notifications',
                onPressed: onNotificationsTap,
                icon: Container(
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(color: const Color(0xFFE8F273), borderRadius: BorderRadius.circular(12)),
                  child: const Icon(Icons.notifications_none_rounded, size: 22),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          const Text('Glad you’re here,', style: TextStyle(color: AppColors.ink, fontSize: 17)),
          const Text(
            'Vidhun',
            style: TextStyle(color: AppColors.ink, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 24),
          UpcomingDrawCard(onTap: onManagePoolTap),
          const SizedBox(height: 10),
          Row(
            children: [
              PoolSectionPill(label: 'Manage Pool', active: true, onTap: onManagePoolTap),
              const SizedBox(width: 5),
              PoolSectionPill(label: 'Joined Pool', active: false, onTap: onJoinedPoolTap),
              const Spacer(),
              TextButton(
                onPressed: onManagePoolTap,
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.muted,
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                ),
                child: const Text('View all', style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          DashboardPoolCard(
            title: 'Bike Pool',
            date: '02\nOCT',
            amount: '\$3,000',
            lotAmount: '\$12,000',
            progress: '0/12',
            due: '08 days till the draw',
            onTap: onManagePoolTap,
          ),
          const SizedBox(height: 10),
          DashboardPoolCard(
            title: 'Home Pool',
            date: '••\n••',
            amount: '\$1,200',
            lotAmount: '\$8,000',
            progress: '0/8',
            due: 'Awaiting for invitees to join',
            onTap: onJoinedPoolTap,
          ),
        ],
      ),
    );
  }
}
