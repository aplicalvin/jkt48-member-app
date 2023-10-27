import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
// import 'package:heroicons/heroicons.dart';
import 'package:jkt48_member_apps/widgets/Home/MenuItems.dart';

class MenukuBar extends StatelessWidget {
  const MenukuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Menu",
            style: TextStyle(
              fontFamily: 'Jakarta',
              color: Color(0xFF1E1E1E),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: MenuItems(
                  iconbang: HeroIcons.userGroup,
                  label: 'Member',
                  containerColor:
                      Color(0xFFFFF2AD), // Ubah warna ke heksadesimal
                  iconColor: Color(0xFF957F09), // Gunakan warna heksadesimal
                ),
              ),
              Expanded(
                child: MenuItems(
                  iconbang: HeroIcons.buildingOffice2,
                  label: 'Teather',
                  containerColor:
                      Color(0xFFC6D5F9), // Ubah warna ke heksadesimal
                  iconColor: Color(0xFF001D62), // Gunakan warna heksadesimal
                ),
              ),
              Expanded(
                child: MenuItems(
                  iconbang: HeroIcons.shoppingBag,
                  label: 'JKT48 Shop',
                  containerColor:
                      Color(0xFFB0FFD0), // Ubah warna ke heksadesimal
                  iconColor: Color(0xFF005F26), // Gunakan warna heksadesimal
                ),
              ),
              Expanded(
                child: MenuItems(
                  iconbang: HeroIcons.puzzlePiece,
                  label: 'Fan Club',
                  containerColor:
                      Color(0xFFE1C9FF), // Ubah warna ke heksadesimal
                  iconColor: Color(0xFF430097), // Gunakan warna heksadesimal
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
