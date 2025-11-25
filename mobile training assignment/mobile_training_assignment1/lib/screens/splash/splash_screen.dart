import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_training_assignment1/screens/onboarding/onboarding_screen.dart';
import 'package:mobile_training_assignment1/widgets/custom_logo_box.dart';
import 'package:mobile_training_assignment1/core/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: CustomLogoBox(),
      ),
    );
  }
}
