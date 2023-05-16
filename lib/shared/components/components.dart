import 'package:flutter/material.dart';

Widget buildPropertyItem(article) => Padding(
  padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXgr4U20-p8WCE-ykuIEFWE5KOs93C1o9NqA&usqp=CAU',),
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
                child: Text('Title',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('date'),
            ],
          ),
        ),
      )
    ],
  ),
);

Widget myDivider() => Padding(padding: EdgeInsets.all(10),);