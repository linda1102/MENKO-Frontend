
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

            final mascotSize = isDesktop ? 240.0 : 200.0;
            final nameWidth = isDesktop ? 300.0 : 250.0;
            final nameHeight = isDesktop ? 90.0 : 75.0;

            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: mascotSize,
                      height: mascotSize,
                      fit: BoxFit.contain,
                    ),

                    Transform.translate(
                      offset: const Offset(0, -60),
                      child: Image.asset(
                        'assets/images/nama.png',
                        width: nameWidth,
                        height: nameHeight,
                        fit: BoxFit.contain,
                      ),
                    ),

                    Transform.translate(
                      offset: const Offset(0, -48),
                      child: Text(
                        'A Bowl Full of Happiness',
                        style: TextStyle(
                          fontSize: isDesktop ? 15 : 13,
                          color: AppColors.textSecondary,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
