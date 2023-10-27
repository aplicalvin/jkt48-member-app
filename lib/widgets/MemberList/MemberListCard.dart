import 'package:flutter/material.dart';

class MemberListCard extends StatelessWidget {
  final String linkGambarMember;
  final String namaMember;
  final String teksGenerasi;

  MemberListCard({
    required this.linkGambarMember,
    required this.namaMember,
    required this.teksGenerasi,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Gambar di atas
          Image.network(
            linkGambarMember,
            width: 150,
            height: 150,
          ),
          SizedBox(height: 8.0),

          // Teks pertama di bawah gambar (namaMember)
          Text(
            namaMember,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          // Teks kedua di bawah gambar (teksGenerasi)
          Text(
            teksGenerasi,
            style: TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
