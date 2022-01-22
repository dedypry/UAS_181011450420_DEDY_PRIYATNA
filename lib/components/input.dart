import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dedy_priyatna/controller/CuacaController.dart';

class Input extends StatelessWidget {
  final c = Get.put(CuacaController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextFormField(
              controller: c.c_cuaca,
              decoration: InputDecoration(hintText: "Masukan Kota"),
            ),
          ),
          ElevatedButton(onPressed: () => c.getCuaca(), child: Text("cari"))
        ],
      ),
    );
  }
}
