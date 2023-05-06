import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UpdatePasswordController extends GetxController {
  final oldPassword = ''.obs;
  final newPassword = ''.obs;
  final confirmPassword = ''.obs;

  void updateOldPassword(String value) => oldPassword.value = value;

  void updateNewPassword(String value) => newPassword.value = value;

  void updateConfirmPassword(String value) => confirmPassword.value = value;

  void updatePassword() {
    // To Do
  }
}