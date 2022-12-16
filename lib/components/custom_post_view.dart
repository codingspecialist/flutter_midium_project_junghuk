import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPostView extends StatelessWidget {
  const CustomPostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/cat1.jpg"),
                ),
                SizedBox(width: 8),
                Text(" 닉네임", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 230,
                  child: Column(
                    children: [
                      Text(
                        "야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/cat1.jpg",
                        width: 100,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ],
        ),
      ),
    );
  }
}
