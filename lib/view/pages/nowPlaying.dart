import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1),
      body: Container(
        height: 219,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Trailer.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
