import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/screens/blankPage.dart';
import 'package:jkt48_member_apps/screens/homepage.dart';
import 'package:jkt48_member_apps/screens/profilePage.dart';
import 'package:jkt48_member_apps/screens/schedulePage.dart';
import 'package:jkt48_member_apps/widgets/News/NewsItems.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(
            children: <Widget>[
              NewsItems(
                date: '27 Oktober 2023',
                newsHeading:
                    'Pengumuman Mengenai FLOWERFUL - JKT48 12th Anniversary Personal Meet and Greet & 2-Shot Event',
                tag: 'Event',
                goingToNews: BlankPageHaha(),
              ),
              NewsItems(
                date: '27 0ktober 2023',
                newsHeading:
                    'Pengumuman Mengenai FLOWERFUL - JKT48 12th Anniversary Concert',
                tag: 'Event',
                goingToNews: BlankPageHaha(),
              ),
              NewsItems(
                date: '20 Oktober 2023',
                newsHeading:
                    'Pengumuman Mengenai JKT48 OFC Event “RUMBLE IN THE ZONE” with JKT48 Trainee',
                tag: 'Event',
                goingToNews: BlankPageHaha(),
              ),
              NewsItems(
                date: '18 Oktober 2023',
                newsHeading:
                    'Pengumuman Mengenai Merchandise “Sayonara Crawl Special Set”',
                tag: 'Goods',
                goingToNews: BlankPageHaha(),
              ),
              NewsItems(
                date: '18 Oktober 2023',
                newsHeading:
                    'Pengumuman Mengenai Perilisan Album Fajar Sang Idola, Back Hip Circle, dan Mahagita Vol. 2',
                tag: 'Release',
                goingToNews: BlankPageHaha(),
              ),
              NewsItems(
                date: '17 Oktober 2023',
                newsHeading:
                    'Pengumuman Mengenai Penambahan Sesi pada Video Call with JKT48, Digital Photobook “The Black Bride”',
                tag: 'Theater',
                goingToNews: BlankPageHaha(),
              ),
            ],
          ),
        ),
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
