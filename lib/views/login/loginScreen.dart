import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunisian_school_doha/views/login/passwordRsestScreen.dart';
import '../../controller/languageController.dart';
import '../../controller/loginController.dart';
import '../home/homeScreen.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());

   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GetBuilder<LanguageController>(
                init: LanguageController(),
                builder: (value) {
                  return DropdownButton<String>(
                    dropdownColor: Colors.white,
                    value: value.savedLang.value,
                    icon: const Icon(
                      Icons.language_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.white),
                    underline: Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    onChanged: (String? newValue) {
                      value.savedLang.value = newValue!;
                      Get.updateLocale(Locale(newValue.toLowerCase()));
                      value.saveLocale();
                    },
                    items: <String>['EN', 'AR', 'FR']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(color: Colors.black),),
                      );
                    }).toList(),
                  );
                }),
          ),
        ],
      ),
      body: Container(
        color: Colors.white70,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Image.asset(
              'assets/imgs/logotsd.png',
              height: 150,
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'parent_id'.tr,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              minWidth: 380,
              color: Color(0xFFB97CFC),
              textColor: Colors.white,
              onPressed: () {
                Get.to(() => HomePage());
              },
              child: Text('identifier'.tr),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(PasswordResetScreen());
              },
              child: const Text(
                'Reinstalliser Password?',
                style: TextStyle(color: Color(0xFF7590d6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
