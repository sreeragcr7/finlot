import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({
    required this.selectedIndex,
    required this.onTabSelected,
    super.key,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.fromLTRB(56, 0, 56, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: .08), blurRadius: 17, offset: const Offset(0, 4)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _NavButton(
            icon: Icons.swap_horiz_rounded,
            selected: selectedIndex == 0,
            onTap: () => onTabSelected(0),
          ),
          _NavButton(
            icon: Icons.home_outlined,
            selected: selectedIndex == 1,
            onTap: () => onTabSelected(1),
          ),
          _NavButton(
            icon: Icons.person_outline_rounded,
            selected: selectedIndex == 2,
            onTap: () => onTabSelected(2),
          ),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({required this.icon, required this.selected, required this.onTap});

  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        width: 74,
        height: 74,
        decoration: BoxDecoration(color: selected ? const Color(0xFFE8F273) : Colors.white, shape: BoxShape.circle),
        child: Icon(icon, color: AppColors.ink, size: 30),
      ),
    );
  }
}
