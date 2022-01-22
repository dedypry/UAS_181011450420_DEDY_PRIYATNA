import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dedy_priyatna/model/CuacaModel.dart';
import 'package:uas_dedy_priyatna/services/ApiCuaca.dart';

class CuacaController extends GetxController {
  CuacaModel? cuaca;

  late TextEditingController c_cuaca;

  void getCuaca() {
    ApiCuaca.getCuaca(c_cuaca.text.toLowerCase()).then((value) {
      print(value.toString());
      cuaca = value;
      update();
    }).catchError((error) {
      print("error ini");
      Get.snackbar(
          "Data tidak Ditemukan", "pastikan data yang kamu ketik benar");
    });
  }

  @override
  void onInit() {
    super.onInit();
    c_cuaca = TextEditingController();
  }
}
