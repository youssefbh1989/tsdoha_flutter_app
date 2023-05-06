import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../languages/presServices.dart';

class LanguageController extends GetxController {

  final PrefService _prefService = PrefService();

  var savedLang = "EN".obs;

  saveLocale() {
    _prefService.createString('locale', savedLang.value);
  }

  Future<void> setLocale() async {
    _prefService.readString('locale').then((value) {
      if (value != '' && value != null) {
        Get.updateLocale(Locale(value.toString().toLowerCase()));
        savedLang.value = value.toString();
        update();
      }
    });
  }

  @override
  void onInit() async {
    setLocale();
    super.onInit();
  }

}