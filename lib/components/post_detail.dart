import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/cat1.jpg",
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Text(
                "< 프로필 , 사용자이름",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "내용",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                "월",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                "작성시간",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
