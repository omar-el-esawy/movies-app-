import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iv/view/componant/firstpagecom/logoAndtext.dart';
import 'package:iv/view/pages/loginPage.dart';

Widget myDrawer(BuildContext cxt) {
  return Drawer(
    width: 260,
    backgroundColor: Color(0xff121212),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Row(children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red,
              child: Image.network(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89c3e38-b6f3-48a0-9f9e-df9a0129fb93/daghh5x-4a77b3ec-fd4f-4d17-9f84-5963a8cb5c03.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4OWMzZTM4LWI2ZjMtNDhhMC05ZjllLWRmOWEwMTI5ZmI5M1wvZGFnaGg1eC00YTc3YjNlYy1mZDRmLTRkMTctOWY4NC01OTYzYThjYjVjMDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dWTFMrwnbAbj5TtUp9U_vQsohW7MnkRPymzR5wZQoV8'),
            ),
            SizedBox(width: 20),
            Text('Liam Zak', style: TextStyle(color: Colors.white)),
          ]),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  logoAndTextSvg('assets/images/Vector (3).svg', "Account"),
                  logoAndText(Icons.settings, "Settings"),
                  logoAndTextSvg('assets/images/Info Circle.svg', "About"),
                  GestureDetector(
                      onTap: () => Navigator.pushReplacement(cxt,
                          MaterialPageRoute(builder: (context) => LogIn())),
                      child: logoAndText(Icons.output, "Logout")),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

PreferredSizeWidget myAppBarlogo() {
  return AppBar(
    leading: Builder(builder: (context) {
      return IconButton(
        icon:
            SvgPicture.asset('assets/images/Vector (4).svg', color: Colors.red),
        onPressed: () => Scaffold.of(context).openDrawer(),
      );
    }),
    backgroundColor: Color(0xff121212),
    title: Container(
      width: 73,
      child: Image.asset('assets/images/Group 127.png', fit: BoxFit.fitWidth),
    ),
    centerTitle: true,
  );
}

PreferredSizeWidget myAppBarText(String text) {
  return AppBar(
    leading: Builder(builder: (context) {
      return IconButton(
        icon:
            SvgPicture.asset('assets/images/Vector (4).svg', color: Colors.red),
        onPressed: () => Scaffold.of(context).openDrawer(),
      );
    }),
    backgroundColor: Color(0xff121212),
    title: Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: 23.44, color: Colors.white, fontWeight: FontWeight.w700),
    ),
    centerTitle: true,
  );
}
