import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/core/host_info.dart';
import 'package:flutter_midium_project/model/post.dart';
import 'package:flutter_midium_project/model/post_detail.dart';
import 'package:flutter_midium_project/view/pages/other_profile_page/other_profile_page.dart';
import 'package:flutter_midium_project/view/pages/post_detail_page/post_detail_page.dart';

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
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtherProfilePage(post.ownerUserId),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              NetworkImage("$host/${post.profileImg}"),
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
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDetailPage(post.postId),
                  ),
                );
              },
              child: Image.network(
                "$host/${post.postThumnail}",
                width: 100,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
