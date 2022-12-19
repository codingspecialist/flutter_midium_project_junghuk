import 'package:flutter/material.dart';
import 'package:flutter_midium_project/core/host_info.dart';
import 'package:flutter_midium_project/model/post_love.dart';
import 'package:flutter_midium_project/view/pages/other_profile_page/other_profile_page.dart';
import 'package:flutter_midium_project/view/pages/post_detail_page/post_detail_page.dart';

class CustomPostLoveView extends StatelessWidget {
  final PostLove postLove;
  const CustomPostLoveView(this.postLove, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 게시글 상세보기로 가야함
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailPage(postLove.postId),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${postLove.postId}",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  OtherProfilePage(postLove.ownerUserId),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              NetworkImage("$host/${postLove.profileImg}"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "${postLove.nickname}",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${postLove.postContent}",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
