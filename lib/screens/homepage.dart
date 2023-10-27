import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/screens/newsPage.dart';
import 'package:jkt48_member_apps/screens/profilePage.dart';
import 'package:jkt48_member_apps/screens/schedulePage.dart';
import 'package:jkt48_member_apps/widgets/Home/ImageCaroursel.dart';
import 'package:jkt48_member_apps/widgets/Home/MenuKuBar.dart';
import 'package:jkt48_member_apps/widgets/Home/PointsBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "JKT48 Apps",
          style: TextStyle(
            fontFamily: 'Jakarta',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 12.0),
            PointsBar(),
            SizedBox(height: 12.0),
            MenukuBar(),
            SizedBox(height: 12.0),
            ImageCarouselWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.calendar),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.userCircle),
            label: 'Profile',
          ),
        ],
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SchedulePage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsPage()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
          }
        },
      ),
    );
  }
}
