import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_tickets_state.dart';

class MyTicketsCubit extends Cubit<MyTicketsState> {
  MyTicketsCubit() : super(MyTicketsInitial());
}
