import 'package:flutter/material.dart';

class ActionLibary extends StatefulWidget {
  const ActionLibary({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ActionLibary();
  }
}

class _ActionLibary extends State<ActionLibary> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              // wrap your Column in Expanded
              flex: 18,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      hintText: '搜索动作库',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              // wrap your Column in Expanded
              child: Column(
                children: <Widget>[
                  ElevatedButton(onPressed: onPressed, child: Text('添加动作'))
                ],
              ),
            ),
          ],
        ));
  }

  void onPressed() {}
}
