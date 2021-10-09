import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ieee_tanta/app/core/controllers/counter_controller.dart';
import 'package:ieee_tanta/app/core/services/theme_service.dart';

class HomeScreen extends StatelessWidget {
  AuthController controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0),
              Text("You pressed this button "),
              const SizedBox(height: 8.0),
              TextButton(
                  onPressed: () => controller.signInWithGoogle(),
                  child: Text("Login With google"))
            ],
          ),
        ),
      ),
    );
  }
}
