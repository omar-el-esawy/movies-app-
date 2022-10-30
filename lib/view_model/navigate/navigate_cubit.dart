import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigate_state.dart';

class NavigateCubit extends Cubit<NavigateState> {
  NavigateCubit() : super(NavigateInitial());
}
