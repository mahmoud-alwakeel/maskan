import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maskan/cubit/states.dart';

import '../screens/about_us_screen.dart';
import '../screens/home_page_screen.dart';
import '../screens/login_admin_screen.dart';
import '../screens/properties_screen.dart';
import '../shared/network/remote/dio_helper.dart';

// cubit needs only one class (1 state)
// and we have multiple states in our app
// as a result we will give the cubit one class
// and build other classes that extends this class
class MaskanCubit extends Cubit<MaskanStates>{
  MaskanCubit(): super(MaskanInitialState());

  // created an object from bloc provider
  // to be able to use it anywhere in the project
  // instead of creating an object in a specific screen that can't be used in the other screens
  static MaskanCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = const [
    HomePageScreen(),
    AboutUsScreen(),
    PropertiesScreen(),
    LoginAdminScreen(),
  ];

  List<String> titles = [
    'Home',
    'About Us',
    'Properties',
    'Login Admin',
  ];

  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(MaskanChangeBottomNavBarState());
  }

  List<BottomNavigationBarItem> bottomItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.block),
      label: 'About us',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.house),
      label: 'Properties',
    ),
  ];

  List<dynamic> properties = [];
  List<String> image = List.filled(4, "");
  List<String> address = List.filled(4, "");
  List<int> prices = List.filled(4, 0);
  int length=0;
  void getProperties(){
    emit(MaskanGetPropertiesLoadingState());
    DioHelper.getData(
      url: 'Property/GetAllProperties',
      //query: {'PropertyID':'19',}
    )?.then((value) {
      length=value?.data[0]["dealType"]["properties"].length;
      for(var x=0 ; x< length ; x++){
       image[x]=value?.data[0]["dealType"]["properties"][x]["images"][0]["imageLink"];
       address[x]= value?.data[0]["dealType"]["properties"][x]["location"];
       prices[x]= value?.data[0]["dealType"]["properties"][x]["price"];
      }

      print("this is seller");
      //print(value?.data[0]["dealType"]["properties"].length);
      //print(value?.data['dealType']['deals']['properties'][0]['seller']['sellerName']);
      print('niceeeeeeeeeeeeeeeee');
      //['dealType']['properties'][0]['seller']['sellerName']
      //print(value?.data.toString());

      emit(MaskanGetPropertiesSuccessState());
    }).catchError((onError) {
      print('errrrroooooooooorrrrrr');
      print(onError.toString());
      emit(MaskanGetPropertiesErrorState(onError.toString()));
    });
  }
}