import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maskan/cubit/cubit.dart';
import 'package:maskan/cubit/states.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MaskanCubit(),
      child: BlocConsumer<MaskanCubit, MaskanStates>(
        listener: (context, state) {},
        builder: (context, state) {
          // this step is optional but we will use it often in this screen
          // so there is no problem in putting it into a variable
          MaskanCubit cubit = MaskanCubit.get(context);

          Widget bodyWidget = cubit.screens[cubit.currentIndex];

          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              leading: Image.asset('images/logo.png', width: 70.0,
                height: 70.0,),
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: bodyWidget,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
          );
        },
      ),
    );
  }
}
