import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv/view/componant/appBar.dart';
import 'package:iv/view/componant/myTickets.dart';
import 'package:iv/view_model/MyTickets/my_tickets_cubit.dart';

class MyTickets extends StatelessWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyTicketsCubit(),
      child: Scaffold(
        drawer: myDrawer(context),
        backgroundColor: Color(0xff1E1E1),
        appBar: myAppBarText("My Tickets"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 29),
          child: BlocConsumer<MyTicketsCubit, MyTicketsState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              MyTicketsCubit myCubit = MyTicketsCubit.get(context);
              return ListView(
                children: [
                  twoTextsWight('Today\'s', ' tickets'),
                  SizedBox(height: 25),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: myCubit.list.length,
                      itemBuilder: (context, index) => ticket("Spiderman NO Way Home",context),
                    ),
                  ),
                  SizedBox(height: 25),
                  twoTextsWight('Upcoming', ' tickets'),
                  SizedBox(height: 25),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: myCubit.list.length,
                      itemBuilder: (context, index) => ticket("Encanto",context),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
