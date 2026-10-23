import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class DashboardPoolCard extends StatelessWidget {
  const DashboardPoolCard({
    required this.title,
    required this.date,
    required this.amount,
    required this.lotAmount,
    required this.progress,
    required this.due,
    required this.onTap,
    super.key,
  });

  final String title;
  final String date;
  final String amount;
  final String lotAmount;
  final String progress;
  final String due;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        height: 232,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: 110,
              child: Container(
                padding: const EdgeInsets.fromLTRB(22, 18, 15, 10),
                decoration: BoxDecoration(color: AppColors.cardLime, borderRadius: BorderRadius.circular(32)),
                child: Row(
                  children: [
                    Container(
                      width: 58,
                      height: 62,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18)),
                      child: Center(
                        child: Text(
                          date,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: date.contains('OCT') ? AppColors.lime : Colors.grey,
                            fontSize: date.contains('OCT') ? 14 : 17,
                            fontWeight: FontWeight.w800,
                            height: 1.05,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                          const SizedBox(height: 7),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 3, 9, 3),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F2C7),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/pool_creator_avatar.png',
                                    width: 23,
                                    height: 23,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Text('Zuha · Creator', style: TextStyle(color: AppColors.ink, fontSize: 12)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -2,
              right: -2,
              top: 98,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(7, 9, 7, 7),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(33)),
                child: Column(
                  children: [
                    Container(
                      height: 61,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F3E2),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        children: [
                          _PoolStat(label: 'Draws won', value: progress),
                          _PoolStat(label: 'Amount', value: amount),
                          _PoolStat(label: 'Lot Amount', value: lotAmount),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F4),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                due,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 11, color: AppColors.ink),
                              ),
                            ),
                            Container(
                              width: 46,
                              height: 46,
                              decoration: const BoxDecoration(color: Color(0xFF32AA5B), shape: BoxShape.circle),
                              child: const Icon(Icons.north_east_rounded, size: 21, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PoolStat extends StatelessWidget {
  const _PoolStat({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.muted, fontSize: 11),
          ),
          const SizedBox(height: 3),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.ink, fontSize: 15, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
