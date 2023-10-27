import 'package:flutter/material.dart';

class ImageCarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ImageCardWidget(
              imageUrl:
                  'https://jkt48.com/images/banner.home.lovejkt48theaterpb-id.jpg'),
          ImageCardWidget(
              imageUrl: 'https://jkt48.com/images/banner.home.jtrust.jpg'),
          ImageCardWidget(
              imageUrl:
                  'https://jkt48.com/images/banner.home.valkyrie48_2023.jpg?v=2'),
        ],
      ),
    );
  }
}

class ImageCardWidget extends StatelessWidget {
  final String imageUrl;

  ImageCardWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke URL saat gambar diklik
        // Menggunakan package url_launcher
        // import 'package:url_launcher/url_launcher.dart';
        // launch('https://jkt48.com');
      },
      child: Container(
        width: 250,
        height: 150.0,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: ClipRRect(
          // Gunakan ClipRRect untuk memotong gambar sesuai dengan border radius
          borderRadius: BorderRadius.circular(24),
          child: Image.network(imageUrl,
              fit: BoxFit.cover), // Menggunakan BoxFit.contain
        ),
      ),
    );
  }
}
