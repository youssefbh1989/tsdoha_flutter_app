import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tunisian_school_doha/languages/translation.dart';
import 'package:tunisian_school_doha/views/onbording/onbordingScreen.dart';

import 'getx_controller_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Translation(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      home:OnboardingScreen() ,
      initialBinding: ControllersBinding(),
    );
  }
}


