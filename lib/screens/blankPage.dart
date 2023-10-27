import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class BlankPageHaha extends StatelessWidget {
  const BlankPageHaha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white, // Mengatur latar belakang menjadi putih
                      elevation: 0.0, // Menghapus bayangan
                    ),
                    child: HeroIcon(HeroIcons.arrowLeft,
                        color:
                            Colors.black), // Mengatur warna ikon menjadi hitam
                  ),
                  Text(
                    "JKT48 Apps",
                    style: TextStyle(
                      fontFamily: 'Jakarta',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:
                    12.0, // Jarak antara widget sebanyak 12px (atau yang diinginkan)
              ),
              Text("Agar Silaturahmi tidak Terputus, Pinjam dulu seratus"),
            ],
          ),
        ),
      ),
    );
  }
}
