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
        title: const Text("Getx Localization"),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     // Card(
      //     //   color: Colors.greenAccent,
      //     //   child: ListTile(
      //     //     title: const Text("Getx dialoge alert"),
      //     //     subtitle: const Text("Getx dialoge alert"),
      //     //     onTap: () {
      //     //       Get.bottomSheet(Container(
      //     //         decoration: BoxDecoration(
      //     //           color: Colors.black,
      //     //           borderRadius: BorderRadius.circular(15),
      //     //         ),
      //     //         child: Column(
      //     //           children: [
      //     //             const SizedBox(height: 12),
      //     //             ListTile(
      //     //               leading: const Icon(Icons.light_mode),
      //     //               title: const Text("Light Mode"),
      //     //               onTap: () {
      //     //                 Get.changeTheme(ThemeData.light());
      //     //               },
      //     //             ),
      //     //             ListTile(
      //     //               leading: const Icon(Icons.dark_mode),
      //     //               title: const Text("Dark Mode"),
      //     //               onTap: () {
      //     //                 Get.changeTheme(ThemeData.dark());
      //     //               },
      //     //             )
      //     //           ],
      //     //         ),
      //     //       ));
      //     //     },
      //     //   ),
      //     // )
      //     // Center(
      //     //   child: TextButton(
      //     //     onPressed: () {
      //     //       Get.toNamed('/screen-one', arguments: {'name': 'Bilal'});
      //     //     },
      //     //     child: const Text("Go to screen one"),
      //     //   ),
      //     // )

      //   ],
      // ),
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
      // body: Container(
      //   height: Get.height * 0.50,
      //   color: Colors.red,
      //   child: const Center(child: Text("center")),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text("English"),
              ),
              const SizedBox(width: 30),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ur', 'Pk'));
                },
                child: const Text("Urdu"),
              )
            ],
          )
        ],
      ),
    );
  }
}
