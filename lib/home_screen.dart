import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController controller = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
      ),
      body: ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                controller.handleTempList(index);
              },
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(controller.fruitList[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: controller.tempFavList
                              .contains(controller.fruitList[index].toString())
                          ? Colors.red
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
