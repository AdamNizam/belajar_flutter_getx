import 'package:belajar_getx/models/model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var m = Model(name: 'Adm', age: 12).obs;

  void increment() {
    count++;
    m.update(
      (val) {
        val!.name = val.name.toUpperCase();
      },
    );
  }

  decrement() => count--;
}
