import 'package:aboutme/me_detail.dart';
import 'package:aboutme/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Me fevziomurtekin = Me(
    firstName: 'Fevzi Ömür',
    lastName: 'Tekin',
    avatar: 'assets/fomur.png', /*Avatar resmi*/
    backdropPhoto: 'assets/bg.png', /* Arka plan resmi.*/
    location: 'Bursa, Turkey',
    biography: 'Develop mobile App with Android \n'
        'Go and Flutter learn \n'
        'He is an ordinary software developer who reads political and historical books..',
    projects: <Project>[
      Project(
        title: 'Bursa Cepte App',
        thumbnail: 'assets/bursacepte.png',
        url: 'https://play.google.com/store/apps/details?id=com.kuarkdijital.bursacepte',
      ),
      Project(
        title: 'Samam',
        thumbnail: 'assets/samam.png',
        url: '',
      ),
      Project(
        title: 'Medicabil App',
        thumbnail: 'assets/medicabil.png',
        url: 'https://play.google.com/store/apps/details?id=com.kuarkdijital.medicabil',
      ),
      Project(
        title: 'Bkm Kitap ',
        thumbnail: 'assets/bkm.png',
        url: '',
      ),
      Project(
        title: 'Tap Here ',
        thumbnail: 'assets/ss.png',
        url: '',
      ),
      Project(
        title: 'Up or Down ',
        thumbnail: 'assets/ss.png',
        url: '',
      ),
      Project(
        title: 'Fahri Polis ',
        thumbnail: 'assets/fahri.png',
        url: '',
      ),
      Project(
        title: 'Indoor Location App ',
        thumbnail: 'assets/sau.jpeg',
        url: '',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MeDetail(fevziomurtekin),
    );
  }
}
