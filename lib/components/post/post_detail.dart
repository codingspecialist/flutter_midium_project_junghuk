import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  // backgroundImage: NetworkImage(""),
                ),
                Column(
                  children: [
                    Text(
                      "Nick NameNameName",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      "Month   -----   ",
                      style: TextStyle(fontSize: 12, color: Colors.white54),
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(width: 10),
            Container(
              child: (Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 20, color: Colors.white54),
                  ),
                  Text(
                    "ing Staff forching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 Season",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    maxLines: null,
                  ),
                  Image.asset(
                    "assets/images/cat5.jpg",
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "White Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 SeasonWhite Sox Announce Coaching Staff for 2023 Season",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    maxLines: null,
                  ),
                ],
              )),
            ),
          ],
        ),
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
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text(""),
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
