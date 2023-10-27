import 'package:flutter/material.dart';
import 'package:jkt48_member_apps/screens/blankPage.dart';

class NewsItems extends StatelessWidget {
  final String date;
  final String newsHeading;
  final String tag;
  final Widget goingToNews; // Variabel yang menentukan halaman tujuan

  NewsItems({
    required this.date,
    required this.newsHeading,
    required this.tag,
    required this.goingToNews,
  });

  Color getTagColor(String tag) {
    switch (tag) {
      case 'Event':
        return Colors.blue;
      case 'Goods':
        return Colors.green;
      case 'Release':
        return Colors.orange;
      case 'Birthday':
        return Colors.lightGreen;
      case 'Theater':
        return Colors.purple;
      case 'Other':
        return Colors.black;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color tagColor = getTagColor(tag);

    return InkWell(
      onTap: () {
        // Arahkan ke halaman yang ditentukan saat kontainer diklik
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlankPageHaha(),
          ),
        );
      },
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    date,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8),
                  Text(
                    newsHeading,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding:
                        EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                    color: tagColor,
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Divider(
              color: Colors.black38,
              thickness: 1,
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
