import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx SnackBar"),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.greenAccent,
            child: ListTile(
              title: const Text("Getx dialoge alert"),
              subtitle: const Text("Getx dialoge alert"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text("Light mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.black,
      //   onPressed: () {
      //     Get.snackbar(
      //       onTap: (snack) {},
      //       "Asif taj",
      //       "Subscribe my channale",
      //       colorText: Colors.white,
      //       backgroundColor: Colors.black,
      //       snackPosition: SnackPosition.TOP,
      //     );
      //   },
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
