import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maskan/cubit/cubit.dart';
import 'package:maskan/cubit/states.dart';
import 'package:maskan/widgets/app_bar.dart';

import '../shared/components/components.dart';
import '../shared/network/remote/api_service.dart';

class PropertiesScreen extends StatefulWidget {
  const PropertiesScreen({Key? key}) : super(key: key);



  @override
  State<PropertiesScreen> createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> {
  late Widget bodyWidget;





  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MaskanCubit , MaskanStates>(
      listener: (context, state){},
        builder: (context, state) {
        List list = MaskanCubit.get(context).image;
        List addAdress=MaskanCubit.get(context).address;
        List addPrice=MaskanCubit.get(context).prices;
        if (state!= MaskanGetPropertiesLoadingState) {
          return ListView.separated(
            itemBuilder: (context, index) => buildPropertyItem(list[index],addAdress[index],addPrice[index])
            ,separatorBuilder: (context, index) => myDivider(),
            itemCount: MaskanCubit.get(context).length,
          );
        }
        else return Center(child: CircularProgressIndicator(),);
          }
    );
  }
}



// child: FutureBuilder<Property>(
//   future: futureProperty,
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       return Text(snapshot.data!.seller as String);
//     } else if (snapshot.hasError) {
//       return Text('${snapshot.error}');
//     }
//
//     return const CircularProgressIndicator();
//   },
// ),


// late Future<Property> futureProperty;
//
// @override
// void initState() {
//   super.initState();
//   futureProperty = fetchProperty();
// }