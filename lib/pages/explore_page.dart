import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/post/post_view.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<ExplorePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(
      length: 1,
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
      appBar: _buildAppBar(),
      body: (SizedBox(
        width: 5,
        height: 5,
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // currentIndex: (),
        backgroundColor: Colors.black,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black54,

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
          CupertinoIcons.plus_circle,
          color: Colors.white,
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Explore"),
    actions: [
      IconButton(
        icon: Icon(
          CupertinoIcons.bell,
          size: 23,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
