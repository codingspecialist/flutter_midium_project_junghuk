import 'package:flutter/material.dart';

class SearchBarState extends StatefulWidget {
  const SearchBarState({Key? key}) : super(key: key);

  @override
  State<SearchBarState> createState() => _SearchBarStateState();
}

class _SearchBarStateState extends State<SearchBarState> {
  final TextEditingController _filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String _searchText = "";

  _SearchBarStateState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
          ),
        ],
      ),
    );
  }
}
