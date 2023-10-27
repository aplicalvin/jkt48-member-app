import 'package:flutter/material.dart';

class MemberListCard extends StatelessWidget {
  const MemberListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          // Gambar di atas
          Image.network(
            'https://jkt48.com/profile/flora_shafiq.jpg',
            width: 100, // Sesuaikan lebar sesuai kebutuhan
            height: 100, // Sesuaikan tinggi sesuai kebutuhan
          ),

          // Teks pertama di bawah gambar
          Text(
            'Teks Pertama',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          // Teks kedua di bawah gambar
          Text(
            'Teks Kedua',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
