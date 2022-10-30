import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

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
}
