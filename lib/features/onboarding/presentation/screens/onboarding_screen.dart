import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({required this.page, required this.onContinue, super.key});

  final int page;
  final VoidCallback onContinue;

  static const _titles = ['Create Your Pool', 'Easy to Use', 'Track Everything'];
  static const _descriptions = [
    'Bring your friends or teammates together and start a shared pool for any goal.',
    'Manage your pools effortlessly with a clean and simple interface.',
    'Stay updated with real-time balance, contributions, and expenses.',
  ];
  static const _illustrations = [
    'assets/images/onboarding_card_pool.png',
    'assets/images/onboarding_card_easy_use.png',
    'assets/images/onboarding_card_insights.png',
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: AppColors.onboardingGradient),
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final compact = constraints.maxHeight < 740;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: SizedBox(
                        width: 216,
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => Expanded(
                              child: Container(
                                height: 4,
                                margin: const EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  color: index <= page ? AppColors.ink : Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.fromLTRB(0, compact ? 60 : 110, 0, 10),
                        child: Column(
                          children: [
                            _OnboardingCard(image: _illustrations[page], height: compact ? 420 : 465),
                            SizedBox(height: compact ? 13 : 16),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  Text(
                                    _titles[page],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.ink,
                                      fontSize: compact ? 27 : 30,
                                      height: 1.1,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -.5,
                                    ),
                                  ),
                                  const SizedBox(height: 17),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(maxWidth: 350),
                                    child: Text(
                                      _descriptions[page],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(color: AppColors.muted, fontSize: 15, height: 1.55),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(28, 8, 28, 24),
                      child: SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: FilledButton(
                          onPressed: onContinue,
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text('Continue', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _OnboardingCard extends StatelessWidget {
  const _OnboardingCard({required this.image, required this.height});

  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        image,
        width: double.infinity,
        height: height,
        fit: BoxFit.fill,
        semanticLabel: 'Onboarding illustration and feature cards',
      ),
    );
  }
}
