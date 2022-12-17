import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPostView extends StatelessWidget {
  final number;
  const CustomPostView(this.number, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/cat1.jpg"),
                ),
                SizedBox(width: 8),
                Text(" 닉네임",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 230,
                  child: Column(
                    children: [
                      Text(
                        "야오옹야오 옹야오옹야오옹야오 옹야오옹야오옹야오 옹야오옹야오옹 야오옹야오옹",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.network(
                      "https://picsum.photos/id/$number/200/300",
                      width: 100,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
