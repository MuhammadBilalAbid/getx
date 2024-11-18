import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends ChangeNotifier {
  final emailCOntroller = TextEditingController().obs;
  final passwordCOntroller = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    try {
      loading.value = true;
      final response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        'email': emailCOntroller.value.text,
        'password': passwordCOntroller.value.text,
      });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar(
            snackPosition: SnackPosition.BOTTOM,
            'Login Successfull',
            'Congratulations');
      } else {
        loading.value = false;
        Get.snackbar(
            snackPosition: SnackPosition.BOTTOM, 'Login Failed', data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar(
          snackPosition: SnackPosition.BOTTOM, 'Exception', e.toString());
    }
  }
}
