import 'package:belajar_getx/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: GetX<Controller>(
          init: Controller(),
          builder: ((controller) => Text(
                'number of ${controller.count.value}',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.amber,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<Controller>().increment();
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
