import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Save"),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: (Container(
          child: Column(
            children: [
              SizedBox(height: 6),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Write',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.lightBlueAccent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
