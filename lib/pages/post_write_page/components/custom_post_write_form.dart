import 'package:flutter/material.dart';
import 'package:flutter_midium_project/components/custom_button.dart';
import 'package:flutter_midium_project/components/custom_text_form_field.dart';
import 'package:flutter_midium_project/models/size.dart';

class CustomPostWriteForm extends StatefulWidget {
  @override
  State<CustomPostWriteForm> createState() => _CustomPostWriteFormState();
}

class _CustomPostWriteFormState extends State<CustomPostWriteForm> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController(); // 추가
  final _content = TextEditingController(); // 추가
  String _role = "daily";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField("Title"),
            CustomTextFormField("Content"),
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
            CustomButton(() {}, "글쓰기"),
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
