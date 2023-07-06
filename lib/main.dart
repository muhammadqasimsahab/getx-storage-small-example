import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_storage/second_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

final box = GetStorage();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          TextField(
            controller: myController,
          ),
          TextButton(
              onPressed: () {
                box.write('key', myController.text);
                Get.to(SecondScreen());
              },
              child: const Text("Move"))
        ],
      ),
    ));
  }
}
