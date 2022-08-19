import 'package:flutter/material.dart';

class SubjectPage extends StatefulWidget {
  const SubjectPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SubjectPage();
  }
}

class _SubjectPage extends State<SubjectPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('项目管理'),
    );
  }
}
