import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/pages/post/post_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("Home"),
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
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white),
                top: BorderSide(color: Colors.white),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Frontend",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Backend",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          PostView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // currentIndex: (),
        backgroundColor: Colors.black,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {});
        },

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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          CupertinoIcons.plus_circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
