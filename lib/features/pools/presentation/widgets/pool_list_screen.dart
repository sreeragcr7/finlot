import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class PoolListScreen extends StatelessWidget {
  const PoolListScreen({
    required this.title,
    required this.subtitle,
    required this.action,
    required this.image,
    super.key,
  });

  final String title;
  final String subtitle;
  final String action;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      appBar: AppBar(
        backgroundColor: AppColors.canvas,
        title: Text(
          title,
          style: const TextStyle(color: AppColors.ink, fontSize: 18, fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(subtitle, style: const TextStyle(color: AppColors.muted, fontSize: 13)),
          const SizedBox(height: 16),
          Container(
            height: 190,
            decoration: BoxDecoration(
              gradient: AppColors.pageGradient,
              border: Border.all(color: AppColors.ink, width: 3),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset(image, fit: BoxFit.contain),
          ),
          const SizedBox(height: 17),
          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$action feature coming soon')));
            },
            icon: const Icon(Icons.add_rounded),
            label: Text(action),
            style: FilledButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
          ),
          const SizedBox(height: 16),
          const _PoolListItem(title: 'Bike Pool', detail: 'Draw on 02 Oct · 12 members'),
          const _PoolListItem(title: 'Home Pool', detail: 'Invite members · 8 members'),
        ],
      ),
    );
  }
}

class _PoolListItem extends StatelessWidget {
  const _PoolListItem({required this.title, required this.detail});

  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: AppColors.cardLime,
          child: Icon(Icons.groups_rounded, color: AppColors.ink),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.ink),
        ),
        subtitle: Text(detail),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
