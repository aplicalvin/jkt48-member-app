import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class MenuItems extends StatelessWidget {
  final HeroIcons iconbang;
  final String label;
  final Color containerColor;
  final Color iconColor;

  MenuItems({
    required this.iconbang,
    required this.label,
    required this.containerColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0, // Lebar Container terluar setara dengan 100px
      child: Column(
        children: [
          Container(
            width: 50.0, // Lebar Container dalam setara dengan 44px
            height: 50.0, // Tinggi Container dalam setara dengan 44px
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: containerColor,
            ),
            child: Center(
              child: HeroIcon(
                iconbang,
                size: 24.0, // Atur ukuran ikon sesuai kebutuhan Anda
                color: iconColor,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(
                  0xFF1E1E1E), // Gunakan warna #1E1E1E sesuai kebutuhan Anda
            ),
          ),
        ],
      ),
    );
  }
}
