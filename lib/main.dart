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
    videos: <Video>[
      Video(
        title: 'Bursa Cepte App',
        thumbnail: 'assets/bursacepte.png',
        url: 'https://play.google.com/store/apps/details?id=com.kuarkdijital.bursacepte',
      ),
      Video(
        title: 'Sensor Background Library',
        thumbnail: 'assets/acce.png',
        url: 'https://github.com/fevziomurtekin/sensor-background',
      ),
      Video(
        title: 'Medicabil App',
        thumbnail: 'assets/medicabil.png',
        url: 'https://play.google.com/store/apps/details?id=com.kuarkdijital.medicabil',
      ),
      Video(
        title: 'Sau Indoor Location App ',
        thumbnail: 'assets/indoor.png',
        url: 'https://www.youtube.com/watch?v=3qK8O3UoqN8',
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
