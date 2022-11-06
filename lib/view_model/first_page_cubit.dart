import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv/Model/Upcoming.dart';
import 'package:iv/view_model/network/constant.dart';
import 'package:iv/view_model/network/dio_helper.dart';
import 'package:iv/view_model/network/end_points.dart';
import 'package:meta/meta.dart';

part 'first_page_state.dart';

class FirstPageCubit extends Cubit<FirstPageState> {
  FirstPageCubit() : super(FirstPageInitial());

  static FirstPageCubit get(context) => BlocProvider.of(context);
  int selected = 1;

  int current = 0;

  changePage(index) {
    current = index;
    print(index.toString());
    emit(FirstPageInitial());
  }

  List imgList = [
    'assets/images/Film.png',
    'assets/images/Film.png',
    'assets/images/Film.png',
    'assets/images/Film.png',
  ];

  List nowPlaying = [
    'assets/images/spider-man-no-way-home-multiverse-poster 1.png',
    'assets/images/spider-man-no-way-home-multiverse-poster 1.png',
    'assets/images/spider-man-no-way-home-multiverse-poster 1.png'
  ];

  void swap(index, reason) {
    current = index;
    emit(FirstPageInitial());
  }

  List<UpcomingFilm>? upcomingFilm;

  void getData() {
    print("this is my data");
    DioHelper.getData(url: movieController, token: token).then((response) {
      upcomingFilm = <UpcomingFilm>[];
      response.data.forEach((v) {
        upcomingFilm!.add(UpcomingFilm.fromJson(v));
      });
      print(upcomingFilm![0].name);
      emit(FirstPageInitial());
    });
  }
}
