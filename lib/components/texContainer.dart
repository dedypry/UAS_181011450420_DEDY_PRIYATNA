import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String title;
  final String value;
  const TextContainer({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(value,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
