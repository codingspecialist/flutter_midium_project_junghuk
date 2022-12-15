import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_edit_button.dart';
import 'package:flutter_midium_project/components/custom_post_text_view.dart';
import 'package:flutter_midium_project/components/custom_widget.dart';
import 'package:flutter_midium_project/pages/post_write_page.dart';
import 'package:flutter_midium_project/pages/profile_update_page/profile_update_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<ProfilePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _buildHeader(),
                  ],
                ),
              ),
            ];
          },
          body: _buildTab(),
        ),
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
              return Container(
                child: (CustomPostTextView()),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 10),
        ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                child: (CustomPostTextView()),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 10),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      tabs: [
        Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            'Storise',
          ),
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            'Lists',
          ),
        ),
      ],
      indicator: BoxDecoration(),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
      controller: _tabController,
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/cat1.jpg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Nick Name",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "followers * following",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomEditButton(() {}),
      ],
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Profile"),
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
