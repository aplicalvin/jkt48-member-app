import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class NavbarItems extends StatelessWidget {
  final HeroIcons iconbang;
  final String label;
  final VoidCallback saatklik;

  NavbarItems(
      {required this.iconbang, required this.label, required this.saatklik});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: saatklik,
      child: Container(
        width: 80.0, // Lebar Container terluar setara dengan 100px
        child: Column(
          children: [
            Container(
              width: 50.0, // Lebar Container dalam setara dengan 44px
              height: 50.0, // Tinggi Container dalam setara dengan 44px
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: Center(
                child: HeroIcon(
                  iconbang,
                  size: 24.0, // Atur ukuran ikon sesuai kebutuhan Anda
                  color: Color(0x9F0202),
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
      ),
    );
  }
}
