import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/screens/blankPage.dart';
// import 'package:jkt48_member_apps/screens/blankPage.dart';
import 'package:jkt48_member_apps/widgets/Home/PointsMenu.dart';

class PointsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFDC0303), // Warna pertama (#DC0303)
            Color(0xFF9C0505), // Warna kedua (#9C0505)
          ],
          stops: [0.153, 0.9092], // Persentase warna pertama dan kedua
          transform: GradientRotation(98), // Sudut rotasi
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "JKT48 Point",
            style: TextStyle(
              fontFamily: 'Jakarta',
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1.000.000 P",
                  style: TextStyle(
                    fontFamily: 'Jakarta',
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "100.000  ",
                        style: TextStyle(
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Bonus \n Point",
                        style: TextStyle(
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: PointsMenu(
                    iconku: HeroIcons.plusSmall,
                    label: 'Tambah',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlankPageHaha(),
                      ));
                    },
                  ),
                ),
                Expanded(
                  child: PointsMenu(
                    iconku: HeroIcons.lightBulb,
                    label: 'Info',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlankPageHaha(),
                      ));
                    },
                  ),
                ),
                Expanded(
                  child: PointsMenu(
                    iconku: HeroIcons.cog6Tooth,
                    label: 'Pengaturan',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlankPageHaha(),
                      ));
                    },
                  ),
                ),
                Expanded(
                  child: PointsMenu(
                    iconku: HeroIcons.rectangleStack,
                    label: 'Riwayat',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlankPageHaha(),
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PointsMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  PointsMenuItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 36, color: Colors.white),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Jakarta',
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
