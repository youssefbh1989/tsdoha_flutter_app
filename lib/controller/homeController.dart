import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

enum DrawerOption {
  MyChildren,
  MyMessages,
  MyPayments,
  About,
  UpdatePassword,
  Configuration,
  Logout,
}

class HomeController extends GetxController {
  var selectedOption = DrawerOption.MyChildren.obs;
  var pageTitle = "My Children".obs;

  void updateSelectedOption(DrawerOption option) {
    selectedOption.value = option;
  }
  Color getOptionColor(int index) {
    return selectedOption.value == index ? Color(0xFF590D6F) : Colors.black;
  }
  void updateTitle(DrawerOption option) {
    switch (option) {
      case DrawerOption.MyChildren:
        pageTitle.value = "My Children";
        break;
      case DrawerOption.MyMessages:
        pageTitle.value = "My Messages";
        break;
      case DrawerOption.MyPayments:
        pageTitle.value = "My Payments";
        break;
      case DrawerOption.About:
        pageTitle.value = "About";
        break;
      case DrawerOption.UpdatePassword:
        pageTitle.value = "Update Password";
        break;
      case DrawerOption.Configuration:
        pageTitle.value = "Configuration";
        break;
      case DrawerOption.Logout:
        pageTitle.value = "";
        break;
      default:
        pageTitle.value = "My Children";
        break;
    }
  }

}
