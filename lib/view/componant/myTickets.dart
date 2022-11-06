import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iv/view/pages/nowPlaying.dart';

Widget twoTextsWight(String s1, String s2) {
  return RichText(
      text: TextSpan(
          text: s1,
          style: GoogleFonts.roboto(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
          children: [
        TextSpan(
          text: s2,
          style: GoogleFonts.roboto(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
        )
      ]));
}

Widget ticket(String name, BuildContext cxt) {
  return Container(
    margin: EdgeInsets.all(12.5),
    height: 129,
    width: 289,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/Subtract.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            height: 102,
            width: 73,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(
                'assets/images/spider-man-no-way-home-multiverse-poster 1.png'),
          ),
        ),
        SizedBox(width: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Image.asset('assets/images/Time Circle.png'),
                SizedBox(width: 11),
                Text(
                  '9:00pm | 20 Februray',
                  style: GoogleFonts.roboto(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Image.asset('assets/images/char.png'),
                SizedBox(width: 11),
                Text(
                  '4 Seats',
                  style: GoogleFonts.roboto(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                  width: 141,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: Text(
                      'View Ticket',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        )
      ],
    ),
  );
}
