import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iv/view/componant/font.dart';
import 'package:iv/view/pages/navigate/navigate.dart';

class Congrats extends StatelessWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Checkout", style: myFont(20)),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset('assets/images/back.svg',
              width: 26, fit: BoxFit.fitWidth),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),
          SizedBox(height: 75),
          Text(
            "Congrats",
            style: GoogleFonts.salsa(
                fontSize: 42, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          SizedBox(height: 24),
          Text(
            "Reservation Completed",
            style: GoogleFonts.salsa(
                fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Image.asset('assets/images/Check mark.png'),
          SizedBox(height: 49),
          TextButton(
            onPressed: () {},
            child: Container(
                width: 252,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
          SizedBox(height: 34),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Navigate()));
            },
            child: Container(
                width: 252,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
