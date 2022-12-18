import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/model/post.dart';
import 'package:flutter_midium_project/view/components/custom_post_view.dart';
import 'package:flutter_midium_project/view/components/custom_widget.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/home_page/home_page_view_model.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _TabPageState();
}

class _TabPageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Logger().d("디버그 : HomePage 실행됨");
    return Scaffold(
      appBar: mainHolderAppBar(context, "홈"),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildTab(),
      ),
    );
  }

  Widget _buildTab() {
    return Column(
      children: [
        _buildTabBar(),
        customDivider(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBarView() {
    HomePageState homePageState = ref.watch(homePageViewModel);
    return TabBarView(
      controller: _tabController,
      children: [
        _buildDailyPost(homePageState.postDailyList),
        _buildBusinessPost(homePageState.postBusinessList),
      ],
    );
  }

  Widget _buildBusinessPost(List<Post>? businessPosts) {
    if (businessPosts == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.separated(
          itemBuilder: (context, index) {
            return CustomPostView(businessPosts[index]);
          },
          separatorBuilder: (context, index) => Divider(height: 5),
          itemCount: businessPosts.length);
    }
  }

  Widget _buildDailyPost(List<Post>? dailyPosts) {
    if (dailyPosts == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.separated(
          itemBuilder: (context, index) {
            return CustomPostView(dailyPosts[index]);
          },
          separatorBuilder: (context, index) => Divider(height: 5),
          itemCount: dailyPosts.length);
    }
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.green,
      unselectedLabelColor: Colors.white,
      tabs: [
        Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            '일상',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            '업무',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Home"),
      actions: [
        IconButton(
          icon: Icon(
            CupertinoIcons.settings_solid,
            size: 22,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
      automaticallyImplyLeading: false,
    );
  }
}
