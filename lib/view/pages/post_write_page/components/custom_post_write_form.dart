import 'package:flutter/material.dart';
import 'package:flutter_midium_project/controller/post_controller.dart';
import 'package:flutter_midium_project/view/components/custom_button.dart';
import 'package:flutter_midium_project/view/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/core/size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class CustomPostWriteForm extends ConsumerStatefulWidget {
  @override
  ConsumerState<CustomPostWriteForm> createState() =>
      _CustomPostWriteFormState();
}

class _CustomPostWriteFormState extends ConsumerState<CustomPostWriteForm> {
  final _formKey = GlobalKey<FormState>();
  final _postTitle = TextEditingController(); // 추가
  final _postContent = TextEditingController(); // 추가
  String _role = "daily";
  dynamic filePath;

  @override
  Widget build(BuildContext context) {
    PostController postCT = ref.read(postController);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                XFile? selectImage = await ImagePicker().pickImage(
                  //이미지를 선택
                  source: ImageSource.gallery, //위치는 갤러리
                  maxHeight: 75,
                  maxWidth: 75,
                  imageQuality: 30, // 이미지 크기 압축을 위해 퀄리티를 30으로 낮춤.
                );
                if (selectImage != null) {
                  filePath = selectImage.path;
                }
              },
              child: Text("이미지선택"),
            ),
            CustomTextFormField(
              "Title",
              controller: _postTitle,
            ),
            CustomTextFormField(
              "Content",
              controller: _postContent,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text("Daily"),
                    value: "daily",
                    groupValue: _role,
                    onChanged: (value) {
                      setState(() {
                        _role = value.toString();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("Business"),
                    value: "business",
                    groupValue: _role,
                    onChanged: (value) {
                      setState(() {
                        _role = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: large_gap),
            CustomButton(() {
              postCT.write(
                  postTitle: _postTitle.text.trim(),
                  postContent: _postContent.text.trim(),
                  role: _role,
                  filePath: filePath);
            }, "글쓰기"),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/cat4.jpg",
          width: 100,
          height: 100,
        ),
        Container(
          child: (Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Title(
                color: Colors.black,
                child: Text(
                  "Medium",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
