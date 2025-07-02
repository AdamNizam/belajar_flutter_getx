import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0;
  void addCount() {
    count++;
    update([1, 3]);
  }

  void lessCount() {
    count--;
    update();
  }
}
