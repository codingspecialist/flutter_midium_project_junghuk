import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/join_custom_form.dart';
import 'package:flutter_midium_project/models/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            SizedBox(height: large_gap),
            JoinCustomForm(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
