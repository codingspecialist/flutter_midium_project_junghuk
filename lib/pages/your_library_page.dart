import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/post/post_view.dart';

class YourLibrayPage extends StatefulWidget {
  const YourLibrayPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<YourLibrayPage> with TickerProviderStateMixin {
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
      appBar: AppBar(
        title: Text(
          'Your library',
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                bottom: BorderSide(color: Colors.white30, width: 2),
              ),
            ),
            child: TabBar(
              tabs: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    'Saved ( 좋아요 누른 것 )',
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    'Recently viewd                          ( 내가 읽은 페이지 )',
                    maxLines: 2,
                  ),
                ),
              ],
              indicator: BoxDecoration(),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              controller: _tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  color: Colors.black,
                  child: (PostView()),
                ),
                Container(
                  color: Colors.black,
                  child: (PostView()),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // currentIndex: (),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,

        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: " ",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TextField()),
          );
        },
        backgroundColor: Colors.green,
        child: Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
