import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostTextView extends StatelessWidget {
  const PostTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "01",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            SizedBox(width: 10),
            Container(
              width: 290,
              height: 100,
              child: (Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 12,
                        // backgroundImage: NetworkImage(""),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Nick Name",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    "White Sox Announce Coaching Staff for 2023 Season",
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                    maxLines: 2,
                  ),
                  Text(
                    "Time   --------  read",
                    style: TextStyle(fontSize: 13, color: Colors.white54),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
