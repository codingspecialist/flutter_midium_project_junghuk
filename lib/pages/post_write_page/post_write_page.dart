import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midium_project/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/pages/post_write_page/components/custom_post_write_form.dart';

class PostWritePage extends StatelessWidget {
  const PostWritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("write"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [CustomPostWriteForm()],
        ),
      ),
    );
  }
}
