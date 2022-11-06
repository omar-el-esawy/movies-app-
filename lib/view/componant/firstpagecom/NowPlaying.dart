import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:iv/view/pages/nowPlaying.dart';

class FilmBox extends StatelessWidget {
  String? url;
  double deg = 0.0;

  FilmBox({Key? key, required this.url, required this.deg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => NowPlaying())),
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
