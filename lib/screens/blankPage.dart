import 'package:flutter/material.dart';
// import 'package:heroicons/heroicons.dart';

class BlankPageHaha extends StatelessWidget {
  const BlankPageHaha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blank Page'),
        backgroundColor: Colors.red[900], // Mengatur warna AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Agar Silaturahmi tidak Terputus, Pinjam dulu seratus"),
            ],
          ),
        ),
      ),
    );
  }
}
