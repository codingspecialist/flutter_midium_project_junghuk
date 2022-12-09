import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "프로필 ------ 이르으으으으음",
            style: TextStyle(color: Colors.white),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Text(
                          "야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹야오옹",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "월 - 일 - 작성시간",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/cat1.jpg",
                    width: 90,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Icon(
                CupertinoIcons.bell,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
