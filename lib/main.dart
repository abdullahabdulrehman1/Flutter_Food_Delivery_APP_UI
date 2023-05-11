// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/food/Refooddetail.dart';
import 'package:helloworld/pages/food/popularfooddetail.dart';
import 'package:helloworld/pages/food/recommendedfooddetail.dart';
import 'package:helloworld/pages/homepage/foodpagebody/Homepage.dart';

import 'Helper/dependancies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // Get.find<Popularproductcontroller>();
    // ignore: prefer_const_constructors
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
