import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv/Model/Upcoming.dart';
import 'package:iv/view_model/network/constant.dart';
import 'package:iv/view_model/network/dio_helper.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import '../network/end_points.dart';

part 'my_tickets_state.dart';

class MyTicketsCubit extends Cubit<MyTicketsState> {
  MyTicketsCubit() : super(MyTicketsInitial());

  static MyTicketsCubit get(context) => BlocProvider.of(context);

  var list = [
    Container(
      height: 229,
      width: 103,
      color: Colors.red,
    ),
    Container(
      margin: EdgeInsets.all(10),
      height: 229,
      width: 103,
      color: Colors.green,
    ),
    Container(
      height: 229,
      width: 103,
      color: Colors.red,
    ),
    Container(
      margin: EdgeInsets.all(10),
      height: 229,
      width: 103,
      color: Colors.green,
    ),
    Container(
      height: 229,
      width: 103,
      color: Colors.red,
    ),
  ];
  List<UpcomingFilm>? upcomingFilm;
  UpcomingFilm? obj1;
  UpcomingFilm? obj2;
  UpcomingFilm? obj3;

  void getData() {
    DioHelper.getData(url: movieController, token: token).then((response) {
      // print(response.data);
      // obj = UpcomingFilm.fromJson(response.data[0]);
      // print(obj!.name);
      upcomingFilm = <UpcomingFilm>[];
      response.data.forEach((v) {
        upcomingFilm!.add( UpcomingFilm.fromJson(v));
      });
      print(upcomingFilm![0].name);
      emit(MyTicketsInitial());
    });
  }
}
