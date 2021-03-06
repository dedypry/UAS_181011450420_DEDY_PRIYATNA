import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dedy_priyatna/pages/Cuaca.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uas Mobile Programing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Cuaca(),
    );
  }
}
