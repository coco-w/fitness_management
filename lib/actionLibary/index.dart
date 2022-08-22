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
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        Positioned(
            right: 10,
            bottom: 20,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blue,
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: onPressed,
                iconSize: 24,
              ),
            )),
        Positioned(
            right: 10,
            bottom: 80,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blue,
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: onPressed,
                iconSize: 24,
              ),
            )),
      ]),
    );
  }

  void onPressed() {}
}
