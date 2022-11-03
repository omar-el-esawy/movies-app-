import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view/componant/baseComp.dart';
import 'package:iv/view/componant/font.dart';
import 'package:iv/view/pages/checkOut/Congrates.dart';
import 'package:iv/view_model/CheckOut/check_out_cubit.dart';
import 'package:iv/view_model/basePage/base_page_cubit.dart';

class CheckOut extends StatelessWidget {
  CheckOut({Key? key}) : super(key: key);

  double? height, width;
  List<String> list=["0 0"];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => CheckOutCubit()..change(),
      child: BlocConsumer<CheckOutCubit, CheckOutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          CheckOutCubit myCubit = CheckOutCubit.get(context);
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 2,
                  width: width! * myCubit.r,
                  color: Colors.red,
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: double.infinity),
                    Text("Spiderman No Way Home", style: myFont(18)),
                    SizedBox(height: 15),
                    Text("Tomorrow | 20 Feb | 9:00pm ", style: myFont(12)),
                    SizedBox(height: 22),
                    Container(
                      width: 296,
                      height: 250,
                      color: Color(0xff171717),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("NP Order", style: myFont(12)),
                              Text("Info", style: myFont(12)),
                              Text("Session", style: myFont(12)),
                              Text("Seats", style: myFont(12)),
                              Text("Total", style: myFont(12)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('7283603745', style: myFont(12)),
                              Text('Spiderman No Way Home', style: myFont(12)),
                              Text('9:00pm , 20 Feb', style: myFont(12)),
                              Text('G5, G6, G7, G8 ', style: myFont(12)),
                              Text('150 EGP', style: myFont(12))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Payment Info', style: myFont(14)),
                        SizedBox(height: 20),
                        Container(
                          width: 315,
                          height: 184,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/images/Box3.png'),
                          )),
                          child: Padding(
                            padding: const EdgeInsets.all(38),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/images/Frame 145.png'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DropdownButton<String>(
                                      onChanged: (value) {},
                                      underline: Container(),
                                      icon: const Icon(
                                          Icons.arrow_drop_down_sharp),
                                      elevation: 16,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      items: list!
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                    DropdownButton<String>(
                                      onChanged: (value) {},
                                      underline: Container(),
                                      icon: const Icon(
                                          Icons.arrow_drop_down_sharp),
                                      elevation: 16,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      items: list!.map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                    Image.asset('assets/images/Group 112.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Congrats()));
                      },
                      child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Pay Now',
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
