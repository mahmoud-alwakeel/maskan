import 'package:flutter/material.dart';
import 'package:maskan/cubit/cubit.dart';


//var x = MaskanCubit.get(context);
Widget buildPropertyItem(list,add,price) => Padding(
  padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage('${list}'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text('${add}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('Price : ${price} EGP',
              style: TextStyle(fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      )
    ],
  ),
);

Widget myDivider() => Padding(padding: EdgeInsets.all(10),);