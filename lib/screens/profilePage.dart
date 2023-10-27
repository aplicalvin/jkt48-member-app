import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/screens/homepage.dart';
import 'package:jkt48_member_apps/screens/newsPage.dart';
import 'package:jkt48_member_apps/screens/schedulePage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text('This is the Profile Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.grey,
        currentIndex: 3, // Tandai bahwa "Profile" harus dipilih
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
          if (index != 3) {
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
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsPage()),
                );
                break;
            }
          }
        },
      ),
    );
  }
}
