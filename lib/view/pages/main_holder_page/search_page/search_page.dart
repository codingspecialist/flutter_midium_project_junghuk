import 'package:flutter/material.dart';
import 'package:flutter_midium_project/controller/post_controller.dart';
import 'package:flutter_midium_project/model/post.dart';
import 'package:flutter_midium_project/model/post_love.dart';
import 'package:flutter_midium_project/view/components/custom_post_love_view.dart';
import 'package:flutter_midium_project/view/components/custom_post_view.dart';
import 'package:flutter_midium_project/view/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/view/components/custom_text_form_field_color.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/search_page/search_page_view_model.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/your_library_page/your_library_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Logger().d("디버그 : SearchPage 실행됨");
    PostController postCT = ref.read(postController);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: mainHolderAppBar(context, "Search"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildBody(postCT),
      ),
    );
  }

  Widget buildBody(PostController postCT) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          flexibleSpace: CustomTextFormFieldColor((value) {
            Logger().d(value);
            postCT.search(value);
          }, "Search"),
        ),
        _list(),
      ],
    );
  }

  Widget _list() {
    return Consumer(
      builder: (context, ref, child) {
        SearchState searchState = ref.watch(searchViewModel);
        List<Post>? postList = searchState.postList;
        if (postList == null) {
          return const SliverToBoxAdapter();
        } else {
          return SliverList(
            delegate: SliverChildListDelegate.fixed(
                postList.map((e) => CustomPostView(e)).toList()),
          );
        }
      }, //CustomPostView(postList[index])
    );
  }
}
