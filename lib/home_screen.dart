import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double opacity = 0.4;
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 200, width: 200, color: Colors.red.withOpacity(opacity)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Slider(
                value: opacity,
                onChanged: (value) {
                  opacity = value;
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }
}
