import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../services/GraphQl/graphQlServices.dart';
import '../views/home/homeScreen.dart';

class UpdatePasswordController extends GetxController {

  final OldPassword = TextEditingController();
  final NewPassword = TextEditingController();
  final ConfirmPassword = TextEditingController();

  void updatePassword() {
    Future<void> updatepassword() async {
      final oldpassword = OldPassword.text;
      final updateNewPassword =NewPassword.text;
      final updateConfirmPassword = ConfirmPassword.text;
      final isAuthenticated = await GraphQLService().updatepassword( oldpassword, updateNewPassword,
          updateConfirmPassword);
      if (isAuthenticated) {
        Get.to(()=>HomePage());
        Get.snackbar(
          'Update',
          'Password Updated',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          'Error',
          'Failed To Update',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }
}