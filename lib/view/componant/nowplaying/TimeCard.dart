import 'package:flutter/cupertino.dart';
import 'package:iv/view/componant/font.dart';

TimeCard(String Day, String month, Color color) {
  return Container(
    height: 62,
    width: 52,
    color: color,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(Day, style: myFont(23)),
        SizedBox(height: 2),
        Text(month, style: myFont(10)),
      ],
    ),
  );
}
