import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../MainScreen.dart';
import '../../controller/homeController.dart';
import '../about/aboutScreen.dart';
import '../configuration/myconfigurationScreen.dart';
import '../mychildren/mychildrenScreen.dart';
import '../mymessages/mymessageScreen.dart';
import '../mypayments/mypaymentScreen.dart';
import '../updatepassword/updatepasswordScreen.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF4D71D7)),
        title: Obx(() => Text(controller.pageTitle.value,style: TextStyle(
          color: Color(0xFF7590d6)
        ),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgs/tsdIcon.png',
              width: 40,
              height: 40,
            ),
          ),
        ],

      ),
      drawer: MainScreen(),
      body: Obx(() {
        switch (controller.selectedOption.value) {
          case DrawerOption.MyChildren:
            return MyChildrenPage();
          case DrawerOption.MyMessages:
            return MyMessagesPage();
          case DrawerOption.MyPayments:
            return MyPaymentsPage();
          case DrawerOption.About:
            return AboutScreen();
          case DrawerOption.UpdatePassword:
            return UpdatePasswordPage();
          case DrawerOption.Configuration:
            return SettingsScreen();
          case DrawerOption.Logout:
            return Container();
          default:
            return Container();
        }
      }),
    );
  }
}
