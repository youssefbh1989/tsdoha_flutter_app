import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:tunisian_school_doha/controller/drawerController.dart';
import 'package:tunisian_school_doha/controller/homeController.dart';
import 'package:tunisian_school_doha/controller/languageController.dart';
import 'package:tunisian_school_doha/controller/loginController.dart';

import 'controller/passwordrestController.dart';

class ControllersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => PasswordResetController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => DrawerController(), fenix: true);
    Get.lazyPut(() => LanguageController(), fenix: true);


  }

}