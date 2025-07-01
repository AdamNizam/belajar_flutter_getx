import 'package:belajar_getx/controllers/controller.dart';
import 'package:belajar_getx/models/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(Controller());
    final m = Model();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Belajar State Management GetX',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Obx(() => Text(
              'Angka ${c.count}',
              style: const TextStyle(
                fontSize: 28,
                color: Colors.amber,
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increment();
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
