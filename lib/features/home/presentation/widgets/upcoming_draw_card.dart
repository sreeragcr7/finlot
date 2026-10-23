import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class UpcomingDrawCard extends StatelessWidget {
  const UpcomingDrawCard({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: ColoredBox(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 15,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                  decoration: BoxDecoration(color: const Color(0xFFE9F377), borderRadius: BorderRadius.circular(16)),
                  child: const Text('Upcoming Draw', style: TextStyle(fontSize: 11, color: AppColors.ink)),
                ),
              ),
              Positioned(
                left: 16,
                right: 92,
                top: 47,
                bottom: 14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '⌛ The pool draw for Bike Pool is happening tomorrow. Stay tuned!',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, height: 1.2, color: AppColors.ink),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: onTap,
                      borderRadius: BorderRadius.circular(22),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 6, 6, 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F1EF),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('View Pool', style: TextStyle(fontSize: 12, color: AppColors.ink)),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.ink,
                              child: Icon(Icons.north_east, color: Colors.white, size: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                width: 96,
                height: 134,
                child: Image.asset(
                  'assets/images/home_draw_illustration.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
