import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:iv/view/pages/navigate/firstpage.dart';
import 'package:iv/view/pages/navigate/myTickets.dart';
import 'package:iv/view/pages/navigate/search.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigate_state.dart';

class NavigateCubit extends Cubit<NavigateState> {
  NavigateCubit() : super(NavigateInitial());

  static NavigateCubit get(context) => BlocProvider.of(context);


  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const  widgetOptions = [
    Home(),
    MyTickets(),
    Search(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    emit(NavigateInitial());
  }
}
