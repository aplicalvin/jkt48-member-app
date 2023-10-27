import 'package:flutter/material.dart';
import 'package:jkt48_member_apps/widgets/MemberList/MemberListCard.dart';

class MemberList extends StatelessWidget {
  const MemberList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member List'),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Padding(
              padding:
                  const EdgeInsets.only(right: 12.0, left: 12.0, top: 24.0),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment
                      .start, // Menentukan alignment (start, end, center, dll.)
                  spacing: 16.0, // Jarak horizontal antara widget
                  runSpacing: 16.0, // Jarak vertikal antara widget
                  children: <Widget>[
                    MemberListCard(
                      linkGambarMember:
                          'https://jkt48.com/profile/adzana_shaliha.jpg',
                      namaMember: 'Adzana Shaliha',
                      teksGenerasi: 'Generasi 8',
                    ),
                    MemberListCard(
                      linkGambarMember:
                          'https://jkt48.com/profile/flora_shafiq.jpg',
                      namaMember: 'Flora Shafiq',
                      teksGenerasi: 'Generasi 7',
                    ),
                    MemberListCard(
                      linkGambarMember:
                          'https://jkt48.com/profile/febriola_sinambela.jpg',
                      namaMember: 'Febriola Sinambela',
                      teksGenerasi: 'Generasi 7',
                    ),
                    MemberListCard(
                      linkGambarMember:
                          'https://jkt48.com/profile/azizi_asadel.jpg',
                      namaMember: 'Azizi Asadel',
                      teksGenerasi: 'Generasi 7',
                    ),
                    // Tambahkan MemberListCard lainnya di sini
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
