import 'package:ecommerce_app/bottomScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomScreen(),
    );
  }
}
