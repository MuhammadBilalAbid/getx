import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.emailCOntroller.value,
              decoration: const InputDecoration(hintText: "Email"),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.passwordCOntroller.value,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(height: 50),
            Obx(
              () => controller.loading.value
                  ? const CircularProgressIndicator()
                  : Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: TextButton(
                        onPressed: () {
                          controller.loginApi();
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
