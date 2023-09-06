// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   /* Timer(
      const Duration(seconds: 2),
      () {
        // Redirect to the login page after the delay.
        Get.offNamed('/login'); // Use named route.
      },
    ); */
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          child: const CircularProgressIndicator(
            backgroundColor: Colors.redAccent,
            ),
        ),
      ),
    );
  }
}