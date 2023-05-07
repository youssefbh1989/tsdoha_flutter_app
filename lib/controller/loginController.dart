import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/GraphQl/graphQlServices.dart';
import '../views/home/homeScreen.dart';

class LoginController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  Future<void> login() async {
    final login = emailController.text;
    final password = passwordController.text;
    final isAuthenticated = await GraphQLService().login( login, password);
    if (isAuthenticated) {
      Get.to(()=>HomePage());
    } else {
      Get.snackbar(
        'Error',
        'Invalid email or password',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }


}