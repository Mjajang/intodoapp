import 'package:flutter/material.dart';
import 'package:intodo/src/values/constants/constants.dart';

import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacementNamed(
        context,
        Routes.homeScreen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "InTodo",
          style: AppTextStyles.blackTextStyle.copyWith(
            fontWeight: AppFontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
