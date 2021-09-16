import 'package:app_filmes/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              'assets/images/backg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black54,
          ),
          Positioned(
            top: Get.height * 0.2,
            child: Image.asset('assets/images/login.png'),
          ),
          Positioned(
            top: Get.height * 0.6,
            child: SizedBox(
              height: Get.height * 0.07,
              width: Get.width * 0.8,
              child: SignInButton(
                Buttons.Google,
                onPressed: () => controller.login(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
