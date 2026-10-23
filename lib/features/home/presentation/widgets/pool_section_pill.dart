import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class PoolSectionPill extends StatelessWidget {
  const PoolSectionPill({
    required this.label,
    required this.active,
    required this.onTap,
    super.key,
  });

  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        decoration: BoxDecoration(
          color: active ? const Color(0xFFF15C94) : Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          label,
          style: TextStyle(color: active ? Colors.white : AppColors.ink, fontSize: 9, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
