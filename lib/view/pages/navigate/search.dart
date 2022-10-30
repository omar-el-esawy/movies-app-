import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iv/view/componant/appBar.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(context),
      backgroundColor: Color(0xff1E1E1),
      appBar: myAppBarText("Search"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 42),
        child: Container(
          width: 340,
          height: 48,
          decoration: BoxDecoration(
            color: Color(0xff1C1C1C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(41),
                  ),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.roboto(
                      color: Color(0xff707070), fontSize: 14))),
        ),
      ),
    );
  }
}
