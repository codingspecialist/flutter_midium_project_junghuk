import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextDetailPage extends StatelessWidget {
  const TextDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: (Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "finish",
                style: TextStyle(color: Colors.blueAccent),
              ),
              Text(
                "Save",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          )),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                // inputFormatters: [FilteringTextInputFormatter.allow(('[ㄱ-ㅎ|가-힣|ㆍ|ᆢ'))],
                maxLines: 10,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
