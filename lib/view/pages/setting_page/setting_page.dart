import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midium_project/controller/user_controller.dart';
import 'package:flutter_midium_project/view/components/custom_text_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserController userCT = ref.read(userController);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Setting"),
      ),
      backgroundColor: Colors.white10,
      body: Container(
        width: double.infinity,
        height: 40,
        color: Colors.grey,
        child: Row(
          children: [
            const SizedBox(width: 10),
            CustomTextButton(() {
              userCT.logout();
            }, "Logout"),
          ],
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Text("Setting"),
  );
}
