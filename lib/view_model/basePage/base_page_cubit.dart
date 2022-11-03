import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'base_page_state.dart';

class BasePageCubit extends Cubit<BasePageState> {
  BasePageCubit() : super(BasePageInitial());
}
