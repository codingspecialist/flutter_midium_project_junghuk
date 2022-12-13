import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(""),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " 닉네임",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "followers * following",
                        style: TextStyle(color: Colors.white),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Edit yout profile"),
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
          // currentIndex: _selectedIndex,
          // onTap: _onItemTapped,
        ),
        backgroundColor: Colors.black,
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
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(
            CupertinoIcons.settings,
            size: 23,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
