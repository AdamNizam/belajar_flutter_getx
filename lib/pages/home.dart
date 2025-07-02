import 'package:belajar_getx/controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Widget Build');
    final countC = Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Belajar GetX',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              id: 1,
              builder: (_) {
                return Text(
                  'Value ${countC.count}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.amber,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GetBuilder<CountController>(
              id: 2,
              builder: (_) {
                return Text(
                  'Value ${countC.count}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            GetBuilder<CountController>(
              id: 3,
              builder: (_) {
                return Text(
                  'Value ${countC.count}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.addCount(),
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
