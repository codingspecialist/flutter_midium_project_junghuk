import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/post/post_text_view.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          ListView(
            children: [
              PostTextView(),
              PostTextView(),
              PostTextView(),
              PostTextView(),
            ],
          ),
        ],
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

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text("Explorer"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // showSearch(
            //   context: context,
            //   delegate: MySearchDelegate(),
            // );
          },
        ),
      ],
    );
  }
}

// class MySearchDelegate extends SearchDelegate {
//   @override
//   Widget? buildLeading(BuildContext context) => IconButton(
//         onPressed: () => close(context, null),
//         icon: const Icon(Icons.arrow_back),
//       );
//
//   @override
//   List<Widget>? buildActions(BuildContext context) => [
//         IconButton(
//           onPressed: () {
//             if (query.isEmpty) {
//               close(context, null);
//             } else {
//               query = ' ';
//             }
//           },
//           icon: const Icon(Icons.clear),
//         )
//       ];
//
//   @override
//   Widget buildResults(BuildContext context) {
//     throw SizedBox();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     throw SizedBox();
//   }
// }
