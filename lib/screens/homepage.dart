import 'package:flutter/material.dart';
import 'package:jkt48_member_apps/widgets/Home/MenuKuBar.dart';
// import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/widgets/Home/PointsBar.dart';
// import 'package:jkt48_member_apps/widgets/Home/MenukuBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
              child: Text(
                "JKT48 Apps",
                style: TextStyle(
                  fontFamily: 'Jakarta',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
                height:
                    12.0), // Jarak antara widget sebanyak 12px (atau yang diinginkan)
            PointsBar(),
            SizedBox(
                height:
                    12.0), // Jarak antara widget sebanyak 12px (atau yang diinginkan)
            MenukuBar(),
          ],
        ),
      ),
    );
  }
}
