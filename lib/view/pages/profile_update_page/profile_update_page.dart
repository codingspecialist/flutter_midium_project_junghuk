import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/controller/post_controller.dart';
import 'package:flutter_midium_project/controller/user_controller.dart';
import 'package:flutter_midium_project/core/host_info.dart';
import 'package:flutter_midium_project/model/post_profile.dart';
import 'package:flutter_midium_project/view/components/custom_button.dart';
import 'package:flutter_midium_project/core/size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ProfileUpdatelPage extends ConsumerWidget {
  PostProfile postProfile;
  ProfileUpdatelPage(this.postProfile, {Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  dynamic filePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserController userCT = ref.read(userController);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("ProfileUpdate"),
      ),
      body: _buildBody(userCT, postProfile),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildBody(UserController userCT, PostProfile postProfile) {
    return ListView(
      children: [
        SizedBox(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: xlarge_gap),
              InkWell(
                onTap: () async {
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
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage:
                        NetworkImage("$host/${postProfile.profileImg}"),
                  ),
                ),
              ),
              SizedBox(height: medium_gap),
              CustomButton(() {
                userCT.userProfileAdd(filePath);
              }, "이미지등록"),
            ],
          ),
        ),
        SizedBox(),
      ],
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text("ProfileUpdate"),
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
  );
}
