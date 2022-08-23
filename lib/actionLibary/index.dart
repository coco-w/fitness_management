import 'package:flutter/material.dart';

class ActionLibary extends StatefulWidget {
  const ActionLibary({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ActionLibary();
  }
}

class _ActionLibary extends State<ActionLibary> {
  FocusNode _searchFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 60.0,
          child: TextField(
            focusNode: FocusNode(),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '动作名称',
            ),
            onTap: _handleSearch,
          ),
        ),
        Positioned(
            right: 10,
            bottom: 18,
            child: FloatingActionButton(
                onPressed: onPressed, child: Icon(Icons.add))),
      ]),
    );
  }

  void onPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Text('hello'),
            height: double.infinity,
          );
        });
  }

  void _handleSearch() {
    _searchFocus.unfocus();
  }
}
