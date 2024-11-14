import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = ['Orange', 'Mango', 'Banana', 'apple'].obs;
  RxList tempFavList = [].obs;

  void handleTempList(int index) {
    if (tempFavList.contains(fruitList[index].toString())) {
      tempFavList.remove(fruitList[index].toString());
    } else {
      tempFavList.add(fruitList[index].toString());
    }
  }
}
