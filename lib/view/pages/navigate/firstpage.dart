import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view/componant/appBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iv/view/componant/font.dart';
import 'package:iv/view/pages/nowPlaying.dart';

import '../../../view_model/first_page_cubit.dart';
import '../../componant/firstpagecom/NowPlaying.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FirstPageCubit(),
      child: Scaffold(
        drawer: myDrawer(context),
        backgroundColor: Color(0xff1E1E1),
        appBar: myAppBarlogo(),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 87.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Now Playing',
                    style: GoogleFonts.salsa(fontSize: 33, color: Colors.white),
                  ),
                  Text(
                    'Book your ticket now',
                    style: GoogleFonts.salsa(fontSize: 10, color: Colors.red),
                  ),
                ],
              ),
              BlocConsumer<FirstPageCubit, FirstPageState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  FirstPageCubit myCubit = FirstPageCubit.get(context);
                  return Column(
                    children: [
                      Container(
                        height:250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  myCubit.nowPlaying[myCubit.selected],
                              ),
                              fit: BoxFit.cover,opacity: .2),
                        ),
                        width: double.infinity,
                        child: PageView.builder(
                          onPageChanged: (index) {
                            myCubit.changePage(index);
                          },
                          controller: PageController(viewportFraction: 0.5),
                          itemCount: myCubit.nowPlaying.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NowPlaying())),
                            child: FilmBox(
                                url: myCubit.nowPlaying[index],
                                deg: myCubit.selected < index
                                    ? 7
                                    : myCubit.selected == index
                                        ? 1
                                        : -7),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 29),
                    child: Text(
                      'Coming Soon',
                      style: myFont(17),
                    ),
                  ),
                  SizedBox(height: 22),
                  BlocConsumer<FirstPageCubit, FirstPageState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      FirstPageCubit myCubit = FirstPageCubit.get(context);

                      return CarouselSlider(
                        carouselController: CarouselController(),
                        items: myCubit.imgList
                            .map((Url) => Builder(
                                  builder: ((context) => Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 10),
                                        child: Image.asset(
                                          Url,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ))
                            .toList(),
                        options: CarouselOptions(
                          pauseAutoPlayInFiniteScroll: true,
                          scrollPhysics: ScrollPhysics(),
                          height: 190,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.ease,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            myCubit.swap(index, reason);
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
