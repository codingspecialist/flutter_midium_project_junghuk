import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_post_text_view.dart';
import 'package:flutter_midium_project/components/custom_post_view.dart';

class YourLibrayPage extends StatefulWidget {
  const YourLibrayPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<YourLibrayPage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => CustomPostTextView(),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("Your library"),
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
