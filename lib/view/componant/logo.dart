import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget logo(double size) {
  return Column(
    children: [
      SvgPicture.asset(
        'assets/images/stars.svg',
        color: Colors.red,
      ),
      SizedBox(height: 6),
      Text(
        'Theater',
        style: GoogleFonts.salsa(
          color: Colors.white,
          fontSize: size,
        ),
      )
    ],
  );
}
