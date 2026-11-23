
import 'dart:async';

import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isDesktop = constraints.maxWidth >= 600;

            final mascotSize = isDesktop ? 360.0 : 270.0;
            final nameWidth = isDesktop ? 420.0 : 320.0;
            final nameHeight = isDesktop ? 125.0 : 100.0;

            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: mascotSize,
                          height: mascotSize,
                          fit: BoxFit.contain,
                        ),

                        const SizedBox(height: 4),

                        Image.asset(
                          'assets/images/nama.png',
                          width: nameWidth,
                          height: nameHeight,
                          fit: BoxFit.contain,
                        ),

                        const SizedBox(height: 12),

                        Text(
                          'A Bowl Full of Happiness',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isDesktop ? 16 : 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textSecondary,
                            letterSpacing: 0.7,
                          ),
                        ),

                        const SizedBox(height: 36),

                        const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.5,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
