import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class FilmBox extends StatelessWidget {
  final String url;
  final double deg;
  const FilmBox({Key? key, required this.url, required this.deg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 25),
      duration: Duration(seconds: 1),
      transform: Matrix4.rotationZ((deg * (pi / 180))),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
      ),
    );
  }
}
