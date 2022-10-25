import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget formInput(TextEditingController controller, String hintWord) {
  return Container(
    width: 340,
    height: 48,
    decoration: BoxDecoration(
      color: Color(0xff1C1C1C),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            hintText: hintWord,
            hintStyle:
                GoogleFonts.roboto(color: Color(0xff707070), fontSize: 14))),
  );
}
