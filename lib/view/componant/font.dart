import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

myFont(double fontSize) {
  return GoogleFonts.roboto(
      color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w700);
}
myFont400(double fontSize) {
  return GoogleFonts.roboto(
      color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w400,height: 1.5
  );
}
