import 'package:flutter/material.dart';

import 'package:flutter_midium_project/model/post_profile.dart';

class CustomPostVisitView extends StatelessWidget {
  final MyVisitListDto myPost;
  const CustomPostVisitView(this.myPost, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${myPost.postId}",
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
                          "http://192.168.0.2:8000/${myPost.postThumnail}"),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${myPost.nickname}",
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
                  "${myPost.postContent}",
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
