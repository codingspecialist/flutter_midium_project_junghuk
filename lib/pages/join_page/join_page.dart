import 'package:flutter/material.dart';
import 'package:flutter_midium_project/pages/join_page/components/custom_join_form.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CustomJoinForm(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
