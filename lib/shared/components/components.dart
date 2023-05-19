import 'package:flutter/material.dart';
import 'package:maskan/web_view/web_view_screen.dart';


Uri uri = Uri.parse('https://pub.dev/packages/webview_flutter');
String urlString = uri.toString();

void navigateTo(context , widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
//var x = MaskanCubit.get(context);
Widget buildPropertyItem(list,add,price,context) => InkWell(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen('http://192.168.1.23:4200/single-property/23')));
    print("in web view screen");
  },
  child:   Padding(
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
  ),
);


Widget myDivider() => Padding(padding: EdgeInsets.all(10),);