import 'package:flutter/material.dart';
import 'package:flutter_midium_project/model/post_love.dart';
import 'package:flutter_midium_project/view/components/custom_post_love_view.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/your_library_page/your_library_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class YourLibraryPage extends ConsumerWidget {
  const YourLibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    YourLibraryState yourLibraryState = ref.watch(yourLibraryViewModel);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: mainHolderAppBar(context, "북마크"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildBody(yourLibraryState.postLoveList),
      ),
    );
  }

  Widget _buildBody(List<PostLove>? postLoves) {
    if (postLoves == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
          itemBuilder: (context, index) => CustomPostLoveView(postLoves[index]),
          itemCount: postLoves.length);
    }
  }
}
