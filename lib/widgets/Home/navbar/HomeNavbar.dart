import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeNavbar(),
    );
  }
}

class HomeNavbar extends StatefulWidget {
  @override
  _HomeNavbarState createState() => _HomeNavbarState();
}

class _HomeNavbarState extends State<HomeNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: DefaultTextStyle(
            style: TextStyle(
              color: _selectedIndex == 0 ? Colors.red[900] : Colors.grey,
            ),
            child: HeroIcon(HeroIcons.home),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: DefaultTextStyle(
            style: TextStyle(
              color: _selectedIndex == 1 ? Colors.red[900] : Colors.grey,
            ),
            child: Icon(Icons.search),
          ),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: DefaultTextStyle(
            style: TextStyle(
              color: _selectedIndex == 2 ? Colors.red[900] : Colors.grey,
            ),
            child: Icon(Icons.notifications),
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: DefaultTextStyle(
            style: TextStyle(
              color: _selectedIndex == 3 ? Colors.red[900] : Colors.grey,
            ),
            child: Icon(Icons.settings),
          ),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.red[900],
      unselectedItemColor: Colors.grey,
    );
  }
}
