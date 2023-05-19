import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maskan/widgets/app_bar.dart';
import 'package:maskan/widgets/card_widget.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../shared/components/components.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MaskanCubit, MaskanStates>(
        listener: (context, state) {},
        builder: (context, state) {
          List list = MaskanCubit.get(context).image;
          List addAdress = MaskanCubit.get(context).address;
          List addPrice = MaskanCubit.get(context).prices;
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(25, 150, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'WELCOME TO',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Text(
                      'MASKAN',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Where You Can Find The Best Apartment for You',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              width: 2,
                              color: Colors.red,
                              style: BorderStyle.solid),
                        ),
                      ),
                      child: const Text('BUY AN APARTMENT'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              width: 2,
                              color: Colors.red,
                              style: BorderStyle.solid),
                        ),
                      ),
                      child: const Text('SELL YOUR APARTMENT'),
                    ),
                    // Add your buttons and text here
                    const SizedBox(height: 20),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                            "Latest Properties",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "All Properties >",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => buildPropertyItem(
                      list[index],
                      addAdress[index],
                      addPrice[index],
                      context),
                  separatorBuilder: (context, index) => myDivider(),
                  itemCount: 3,
                ),
              ),
              // Container(
              //   color: Colors.grey,
              //   width: double.infinity,
              //   height: 1000,
              //   margin: const EdgeInsets.all(16),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           const Text(
              //             "Latest Properties",
              //             style: TextStyle(
              //               fontSize: 20,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           TextButton(
              //             onPressed: () {},
              //             child: const Text(
              //               "All Property >",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w400,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //
              //       // CustomCard(
              //       //     imagePath:
              //       //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXgr4U20-p8WCE-ykuIEFWE5KOs93C1o9NqA&usqp=CAU',
              //       //     title: 'Title',
              //       //     description: 'description'),
              //       // const SizedBox(
              //       //   height: 20,
              //       // ),
              //       // CustomCard(
              //       //     imagePath:
              //       //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXgr4U20-p8WCE-ykuIEFWE5KOs93C1o9NqA&usqp=CAU',
              //       //     title: 'title',
              //       //     description: 'description'),
              //       // const SizedBox(
              //       //   height: 20,
              //       // ),
              //       // CustomCard(
              //       //     imagePath:
              //       //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXgr4U20-p8WCE-ykuIEFWE5KOs93C1o9NqA&usqp=CAU',
              //       //     title: 'title',
              //       //     description: 'description'),
              //     ],
              //   ),
              // ),
            ],
          );
        });
    //bottomNavigationBar: const BottomAppBar(
  }
}
/*


 */
