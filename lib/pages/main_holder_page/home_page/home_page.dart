import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_post_view.dart';
import 'package:flutter_midium_project/components/custom_widget.dart';
import 'package:flutter_midium_project/pages/main_holder_page/main_holder_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<HomePage> with TickerProviderStateMixin {
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
    return Scaffold(
      appBar: mainHolderAppBar(context, "Home"),
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
    return TabBarView(
      controller: _tabController,
      children: [
        ListView.separated(
            itemBuilder: (context, index) {
              return CustomPostView(index);
            },
            separatorBuilder: (context, index) => Divider(height: 5),
            itemCount: 10),
        ListView.separated(
            itemBuilder: (context, index) {
              return CustomPostView(index);
            },
            separatorBuilder: (context, index) => Divider(height: 5),
            itemCount: 10),
      ],
    );
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
            'Daily',
          ),
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            'business',
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
