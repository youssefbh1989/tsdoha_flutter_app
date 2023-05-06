import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Image.asset(
              'assets/imgs/logo.png',
              height: 100,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                launch('https://proosoftcloud.com/');
              },
              child: const ListTile(
                leading: Icon(Icons.language),
                title: Text('Website'),
              ),
            ),
            GestureDetector(
              onTap: () {
                launch('info@proosoft.com');
              },
              child: const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
              ),
            ),
            GestureDetector(
              onTap: () {
                launch('https://www.facebook.com/Proo-School-Erp-102552524734673/');
              },
              child: const ListTile(
                leading: Icon(Icons.facebook),
                title: Text('Facebook'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
