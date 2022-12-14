import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/text/text_page.dart';

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
      body: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 48,
                    // backgroundImage: NetworkImage(""),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
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
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit your Profile'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(),
            ),
            child: TabBar(
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
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  color: Colors.greenAccent,
                  child: (SingleChildScrollView(child: Container())),
                ),
                Container(
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
            MaterialPageRoute(builder: (context) => TextPage()),
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

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Profile"),
    actions: [
      IconButton(
        icon: Icon(
          CupertinoIcons.bell,
          size: 22,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
