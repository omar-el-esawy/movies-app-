import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv/view/pages/checkOut/CheckOut.dart';
import 'package:iv/view/pages/checkOut/Reservation.dart';
import 'package:meta/meta.dart';

part 'base_page_state.dart';

class BasePageCubit extends Cubit<BasePageState> {
  BasePageCubit() : super(BasePageInitial());

  static BasePageCubit get(context) => BlocProvider.of(context);
  int index = 0;

  var titles = ["Reservation", "CheckOut", "CheckOut"];
  var load = [0.5, 0.80, 1];

  void next() {
    index++;
    print(index);
    emit(BasePageInitial());
  }
}
