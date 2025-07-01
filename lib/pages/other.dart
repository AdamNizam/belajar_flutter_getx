import 'package:belajar_getx/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Other extends StatelessWidget {
  final c = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${c.count}'),
      ),
    );
  }
}
