import 'package:flutter/material.dart';
import 'package:jkt48_member_apps/screens/homepage.dart';

void main() {
  runApp(JKT48Apps());
}

class JKT48Apps extends StatelessWidget {
  const JKT48Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JKT48 Apps',
      home: HomePage(),
    );
  }
}
