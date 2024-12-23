import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController{
  var selectedPosition = 0.obs;

  void changedPositionWithIndex(int position){
    this.selectedPosition.value = position;
  }
}