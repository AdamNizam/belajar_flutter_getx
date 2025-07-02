import 'package:belajar_getx/models/model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0;
  var m = Model(name: 'Adm', age: 12).obs;

  void increment() {
    count++;
    update();
  }

  decrement() => count--;
}
