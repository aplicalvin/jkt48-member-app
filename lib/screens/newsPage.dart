import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/screens/homepage.dart';
import 'package:jkt48_member_apps/screens/profilePage.dart';
import 'package:jkt48_member_apps/screens/schedulePage.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
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
      body: Center(
        child: Text('This is the News Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.grey,
        currentIndex: 2, // Tandai bahwa "News" harus dipilih
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
          if (index != 2) {
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SchedulePage()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
                break;
            }
          }
        },
      ),
    );
  }
}
