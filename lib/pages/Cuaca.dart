import 'package:flutter/material.dart';
import 'package:uas_dedy_priyatna/components/input.dart';
import 'package:uas_dedy_priyatna/components/showCuaca.dart';

class Cuaca extends StatelessWidget {
  const Cuaca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("181011450420 - DEDY PRIYATNA"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Input(),
            SizedBox(
              height: 50,
            ),
            ShowCuaca()
          ],
        ),
      ),
    );
  }
}
