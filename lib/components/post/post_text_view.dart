import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostTextView extends StatelessWidget {
  const PostTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          "프로필 ------ 이르으으으으음",
          style: TextStyle(color: Colors.black),
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  "01",
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Text(
                        "야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "월 - 일 - 작성시간",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ],
        ),
      ]),
    );
  }
}
