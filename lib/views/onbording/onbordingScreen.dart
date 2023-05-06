import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/loginScreen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Get.off(LoginScreen());
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}