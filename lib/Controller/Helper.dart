import 'package:get/get.dart';

class Helper extends GetxController{
  RxInt currentIndex = 0.obs;
  void onChangedIndex(int index ){
    index++;
    currentIndex.value = index;
  }


}