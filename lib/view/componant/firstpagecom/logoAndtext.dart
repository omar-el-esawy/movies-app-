import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view/componant/logo.dart';
import 'package:google_fonts/google_fonts.dart';

Widget logoAndTextSvg(String logoDes, String text) {
  return Row(
    children: [
      SvgPicture.asset(logoDes, width: 24, color: Colors.red),
      SizedBox(width: 20),
      Text(text, style: GoogleFonts.roboto(color: Colors.white, fontSize: 14)),
    ],
  );
}

Widget logoAndText(IconData logoDes, String text) {
  return Row(
    children: [
      Icon(logoDes, color: Colors.red),
      SizedBox(width: 20),
      Text(text, style: GoogleFonts.roboto(color: Colors.white, fontSize: 14)),
    ],
  );
}
