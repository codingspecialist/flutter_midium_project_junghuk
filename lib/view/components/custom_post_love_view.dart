import 'package:flutter/material.dart';
import 'package:flutter_midium_project/model/post_love.dart';

class CustomPostLoveView extends StatelessWidget {
  final PostLove postLove;
  const CustomPostLoveView(this.postLove, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          "http://192.168.0.2:8000/${postLove.profileImg}"),
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
    );
  }
}
