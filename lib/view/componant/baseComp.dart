import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view/componant/font.dart';

Widget iconAndText(String Url, String text) {
  return Row(
    children: [
      SvgPicture.asset(Url),
      SizedBox(width: 9),
      Text(text,style: myFont(11)),
    ],
  );
}
