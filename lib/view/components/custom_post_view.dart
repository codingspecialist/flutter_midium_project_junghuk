import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/model/post.dart';

class CustomPostView extends StatelessWidget {
  final Post post;
  const CustomPostView(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.grey,
          width: 0.7,
        )),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                            "http://192.168.0.2:8000/${post.profileImg}"),
                      ),
                      SizedBox(width: 8),
                      Text(" ${post.nickname}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    maxLines: 2,
                    "${post.postTitle}",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Image.network(
              "http://192.168.0.2:8000/${post.postThumnail}",
              width: 100,
              height: 60,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
