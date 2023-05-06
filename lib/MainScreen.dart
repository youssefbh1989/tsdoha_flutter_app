import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/homeController.dart';

class MainScreen extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4d71d7), Color(0xFF6495ed)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/imgs/user-avatar.png'),
                  radius: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'youssef ben hassine',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('My Children',
                style: TextStyle(color: controller.getOptionColor(0))),
            onTap: () {
              controller.getOptionColor(0);
              controller.updateSelectedOption(DrawerOption.MyChildren);
              controller.pageTitle.value = 'My Children';
              controller.pageTitle.value;
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('My Messages',
                style: TextStyle(color: controller.getOptionColor(1))),
            onTap: () {
              controller.getOptionColor(1);
              controller.updateSelectedOption(DrawerOption.MyMessages);
              controller.pageTitle.value = 'My Messages';
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('My Payments',
                style: TextStyle(color: controller.getOptionColor(2))),
            onTap: () {
              controller.getOptionColor(2);
              controller.updateSelectedOption(DrawerOption.MyPayments);
              controller.pageTitle.value = 'My Payments';
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About',
                style: TextStyle(color: controller.getOptionColor(3))),
            onTap: () {
              controller.getOptionColor(3);
              controller.updateSelectedOption(DrawerOption.About);
              controller.pageTitle.value = 'About';
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Update Password',
                style: TextStyle(color: controller.getOptionColor(4))),
            onTap: () {
              controller.getOptionColor(4);
              controller.updateSelectedOption(DrawerOption.UpdatePassword);
              controller.pageTitle.value = 'Update Password';
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuration',
                style: TextStyle(color: controller.getOptionColor(5))),
            onTap: () {
              controller.getOptionColor(5);
              controller.updateSelectedOption(DrawerOption.Configuration);
              controller.pageTitle.value = 'Configuration';
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Logout',
            ),
            onTap: () {
              controller.updateSelectedOption(DrawerOption.Logout);

              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
