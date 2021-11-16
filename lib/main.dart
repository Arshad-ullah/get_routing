// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'second.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => MyApp()),
      GetPage(name: '/second', page: () => const Second()),
    ],
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send data')),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
            onPressed: () {
              // Get.to(Second(),//to go to the second screen
              //     arguments: [12, 3, 2],//pass data
              //     transition: Transition.zoom,//animation
              //     duration: Duration(seconds: 2),//during the animation in seconds
              //    // fullscreenDialog: true,
              //     curve: Curves.easeIn);

              Get.toNamed('/second');
            },
            child: const Text('Send data'),
          )),
        ],
      ),
    );
  }
}
