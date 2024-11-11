import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swicth Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Switch(
                activeColor: Colors.black,
                value: controller.notification.value,
                onChanged: (value) {
                  controller.setNotification(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
