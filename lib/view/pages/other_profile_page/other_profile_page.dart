import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/model/post_profile.dart';
import 'package:flutter_midium_project/view/components/custom_edit_button.dart';
import 'package:flutter_midium_project/view/components/custom_follow_button.dart';
import 'package:flutter_midium_project/view/components/custom_post_my_view.dart';
import 'package:flutter_midium_project/view/components/custom_post_visit_view.dart';
import 'package:flutter_midium_project/view/components/custom_widget.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/main_holder_appbar.dart';
import 'package:flutter_midium_project/view/pages/main_holder_page/profile_page/profile_page_view_model.dart';
import 'package:flutter_midium_project/view/pages/other_profile_page/other_profile_page_view_model.dart';
import 'package:flutter_midium_project/view/pages/profile_update_page/profile_update_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class OtherProfilePage extends ConsumerStatefulWidget {
  int userId;
  OtherProfilePage(this.userId, {Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _TabPageState();
}

class _TabPageState extends ConsumerState<OtherProfilePage>
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
    Logger().d("디버그 : OtherProfilePage 실행됨");
    OtherProfileState profileState =
        ref.watch(otherProfileViewModel(widget.userId));
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: mainHolderAppBar(context, "OtherProfile"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _buildHeader(profileState),
                  ],
                ),
              ),
            ];
          },
          body: _buildTab(profileState),
        ),
      ),
    );
  }

  Widget _buildHeader(OtherProfileState profileState) {
    PostProfile? postProfile = profileState.postProfile;
    if (postProfile == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/cat1.jpg"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${postProfile.nickname} 님의 페이지",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  postProfile.my
                      ? const SizedBox()
                      : SizedBox(
                          width: 100,
                          child:
                              CustomFollowButton(() {}, postProfile.subscribe),
                        ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CustomEditButton(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileUpdatelPage()),
            );
          }, "Edit your Profile"),
        ],
      );
    }
  }

  Widget _buildTab(OtherProfileState profileState) {
    return Column(
      children: [
        _buildTabBar(),
        customDivider(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: _buildTabBarView(profileState)),
      ],
    );
  }

  Widget _buildTabBarView(OtherProfileState profileState) {
    PostProfile? postProfile = profileState.postProfile;

    if (postProfile == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return TabBarView(
        controller: _tabController,
        children: [
          ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  child: (CustomPostMyView(
                      postProfile.myPostListDto[index], postProfile.nickname)),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: postProfile.myPostListDto.length),
          ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  child:
                      (CustomPostVisitView(postProfile.myVisitListDto[index])),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: postProfile.myVisitListDto.length),
        ],
      );
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
          child: const Text(
            '마이',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text(
            '방문',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
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
