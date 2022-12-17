import 'package:flutter/material.dart';
import 'package:flutter_midium_project/view/pages/login_page/components/custom_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CustomLoginForm(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
