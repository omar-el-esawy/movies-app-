import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'first_page_state.dart';

class FirstPageCubit extends Cubit<FirstPageState> {
  FirstPageCubit() : super(FirstPageInitial());

  static FirstPageCubit get(context) => BlocProvider.of(context);
  int current = 0;
  List imgList = [
    'assets/images/Film.png',
    'assets/images/Film.png',
    'assets/images/Film.png',
    'assets/images/Film.png',
  ];

  void swap(index, reason) {
    current = index;
    emit(FirstPageInitial());
  }
}
