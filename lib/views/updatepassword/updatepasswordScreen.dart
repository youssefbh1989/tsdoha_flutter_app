import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/updatepasswordController.dart';



class UpdatePasswordPage extends StatelessWidget {
  final UpdatePasswordController controller =
  Get.put(UpdatePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Old Password',
              ),
              onChanged: controller.updateOldPassword,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'New Password',
              ),
              onChanged: controller.updateNewPassword,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
              onChanged: controller.updateConfirmPassword,
            ),
            const SizedBox(height: 32.0),
            Center(
              child: MaterialButton(
                minWidth: 380,
                color: Color(0xFFB97CFC),
                onPressed: controller.updatePassword,
                child: Text('Update',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
