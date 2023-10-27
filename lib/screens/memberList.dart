import 'package:flutter/material.dart';
import 'package:jkt48_member_apps/widgets/MemberList/MemberListCard.dart';

class MemberList extends StatelessWidget {
  const MemberList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member List'),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MemberListCard(), // Menggunakan widget MemberListCard
              ],
            ),
          ),
        ),
      ),
    );
  }
}
