import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List fruitList = ['Orange', 'Mango', 'Banana', 'apple'];
  List tempFavList = [];
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
      ),
      body: ListView.builder(
          itemCount: fruitList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (tempFavList.contains(fruitList[index].toString())) {
                  tempFavList.remove(fruitList[index].toString());
                } else {
                  tempFavList.add(fruitList[index].toString());
                }
                setState(() {});
              },
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(fruitList[index].toString()),
                  trailing: Icon(
                    Icons.favorite,
                    color: tempFavList.contains(fruitList[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
