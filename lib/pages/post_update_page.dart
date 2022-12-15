import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/pages/main_holder_page/main_holder_page.dart';

class PostUpdatePage extends StatelessWidget {
  const PostUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: (Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainHolderPage(),
                    ),
                  );
                },
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Image",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 10,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Write',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
