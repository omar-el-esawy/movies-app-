import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view/componant/baseComp.dart';
import 'package:iv/view/componant/font.dart';
import 'package:iv/view/pages/checkOut/CheckOut.dart';
import 'package:iv/view/pages/checkOut/Reservation.dart';
import 'package:iv/view_model/basePage/base_page_cubit.dart';

class BasePage extends StatelessWidget {
  BasePage({Key? key}) : super(key: key);
  double? height, width;
  var list = [
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SizedBox(width: 15),
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SizedBox(width: 15),
    SvgPicture.asset('assets/images/iconChar (2).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (1).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (3).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
    SvgPicture.asset('assets/images/iconChar (4).svg'),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => BasePageCubit(),
      child: BlocConsumer<BasePageCubit, BasePageState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          BasePageCubit myCubit = BasePageCubit.get(context);
          return Scaffold(
            backgroundColor: Color(0xff1E1E1),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(myCubit.titles[myCubit.index], style: myFont(20)),
              centerTitle: true,
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset('assets/images/back.svg',
                    width: 26, fit: BoxFit.fitWidth),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 2,
                  width: width! * myCubit.load[myCubit.index],
                  color: Colors.red,
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: double.infinity),
                    Text("Spiderman No Way Home", style: myFont(18)),
                    Image.asset('assets/images/Group 101.png'),
                    Container(
                      width: 360,
                      child: Wrap(
                        runSpacing: 23,
                        spacing: 14,
                        children: list,
                      ),
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        iconAndText(
                            'assets/images/iconChar (4).svg', 'Reserved'),
                        SizedBox(width: 30),
                        iconAndText(
                            'assets/images/iconChar (3).svg', 'Avaliable'),
                        SizedBox(width: 30),
                        iconAndText(
                            'assets/images/iconChar (2).svg', 'Selected'),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Money.png'),
                        SizedBox(width: 6),
                        Text("150 EGP  •   4Seats Selected", style: myFont(18)),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => CheckOut()));
                      },
                      child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Checkout',
                              style: myFont(24),
                            ),
                          )),
                    ),
                  ],
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
