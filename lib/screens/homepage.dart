import 'package:flutter/material.dart';
// import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/widgets/Home/PointsBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "JKT48 Apps",
                style: TextStyle(
                  fontFamily: 'Jakarta',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            PointsBar(), 
          ],
        ),
      ),
    );
  }
}
