import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPostTextView extends StatelessWidget {
  final number;
  const CustomPostTextView(this.number, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "01",
          style: TextStyle(fontSize: 30, color: Colors.grey),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        "https://picsum.photos/id/$number/200/300"),
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
                maxLines: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
