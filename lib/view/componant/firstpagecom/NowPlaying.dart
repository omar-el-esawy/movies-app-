import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iv/Model/Upcoming.dart';
import 'dart:math';

import 'package:iv/view/pages/nowPlaying.dart';

class FilmBox extends StatelessWidget {
  String? url;
  double deg = 0.0;
  final UpcomingFilm upcomingFilm;

  FilmBox(
      {Key? key,
      required this.url,
      required this.deg,
      required this.upcomingFilm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NowPlaying(upcomingFilm: upcomingFilm))),
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: 25),
        duration: Duration(milliseconds: 300),
        transform: Matrix4.rotationZ((deg * (pi / 180))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage(url!), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
