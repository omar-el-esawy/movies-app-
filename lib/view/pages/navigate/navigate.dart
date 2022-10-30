import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iv/view_model/navigate/navigate_cubit.dart';

class Navigate extends StatelessWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigateCubit(),
      child: BlocConsumer<NavigateCubit, NavigateState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NavigateCubit myCubit = NavigateCubit.get(context);
          return Scaffold(
            backgroundColor: Color(0xff1E1E1),
            body: NavigateCubit.widgetOptions[myCubit.selectedIndex],
            bottomNavigationBar: SizedBox(
              height: 75,
              child: BottomNavigationBar(
                backgroundColor: Color(0xff121212),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/home.png'),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/My Tickets.png'),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/Search.png'),
                    ),
                    label: '',
                  ),
                ],
                currentIndex: myCubit.selectedIndex,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.white,
                onTap: myCubit.onItemTapped,
              ),
            ),
          );
        },
      ),
    );
  }
}
