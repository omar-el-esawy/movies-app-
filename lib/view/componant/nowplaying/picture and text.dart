import 'package:flutter/cupertino.dart';
import 'package:iv/view/componant/font.dart';

pictureAndText(String Url, String name) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 66.5,
        width: 57.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image.asset(Url),
      ),
      SizedBox(height: 8),
      Text(name, style: myFont400(10)),
    ],
  );
}
