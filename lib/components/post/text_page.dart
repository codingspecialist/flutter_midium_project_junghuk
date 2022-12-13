import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                maxLines: 20,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Write',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
