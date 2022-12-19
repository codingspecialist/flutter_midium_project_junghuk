import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/core/host_info.dart';
import 'package:flutter_midium_project/model/post_detail.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_midium_project/view/pages/post_detail_page/post_detail_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailPage extends ConsumerWidget {
  final postId;
  const PostDetailPage(this.postId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostDetailState postDetailState = ref.watch(postDetailViewModel(postId));
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Detail"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildBody(postDetailState, ref),
        ),
      ),
    );
  }

  Widget _buildBody(PostDetailState postDetailState, WidgetRef ref) {
    PostDetail? postDetail = postDetailState.postDetail;
    if (postDetail == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage("$host/${postDetail.profileImg}"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      " ${postDetail.nickname}",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          ref
                              .read(postDetailViewModel(postDetail.postId)
                                  .notifier)
                              .like();
                        },
                        child: buildLike(postDetailState),
                      ),
                      const Flexible(
                        child: FractionallySizedBox(
                          widthFactor: 1,
                        ),
                      ),
                      ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          new ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.lightBlue),
                            child: const Text(
                              "수정",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          new ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent),
                            child: const Text(
                              "삭제",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "${postDetail.postTitle}",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.network(
                    "$host/${postDetail.postThumnail}",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "${postDetail.postContent}",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    maxLines: null,
                  ),
                ),
              ],
            )),
          ),
        ],
      );
    }
  }

  Widget buildLike(PostDetailState postDetailState) {
    bool isLove = postDetailState.isLove;
    if (isLove) {
      return Icon(CupertinoIcons.heart_fill, size: 23, color: Colors.red);
    } else {
      return Icon(CupertinoIcons.heart, size: 23, color: Colors.white);
    }
  }
}
